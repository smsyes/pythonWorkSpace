# coding=utf-8
from __future__ import print_function, unicode_literals
import re, math, time
from collections import Counter
import difflib
from .prefs import get_recommended_search
from . import prefs




stop_words_english = (
"want", "ourselves", "hers", "between", "yourself", "but", "again", "there", "about", "once", "during", "out", "very",
"having", "with", "they", "own", "an", "be", "some", "for", "do", "its", "yours", "such", "into", "of", "most",
"itself", "other", "off", "is", "s", "am", "or", "who", "as", "from", "him", "each", "the", "themselves", "until",
"below", "are", "we", "these", "your", "his", "through", "don", "nor", "me", "were", "her", "more", "himself", "this",
"down", "should", "our", "their", "while", "above", "both", "up", "to", "ours", "had", "she", "all", "no", "when", "at",
"any", "before", "them", "same", "and", "been", "have", "in", "will", "on", "does", "yourselves", "then", "that",
"because", "what", "over", "why", "so", "can", "did", "not", "now", "under", "he", "you", "herself", "has", "just",
"where", "too", "only", "myself", "which", "those", "i", "after", "few", "whom", "t", "being", "if", "theirs", "my",
"against", "a", "by", "doing", "it", "how", "further", "was", "here", "than", "part")
symbols = "!\"#$%&()*+-.,/:;<=>?@[\]^_`'{|}~\n\n\r"

alpha = 0


class action_library_data():
    def __init__(self):
        self.actions = []
        self.DF = None
        self.all_words = []
        self.tf_idf = {}
        self.processed_names = []
        self.tags = []
        self.preferred_search = []
        self.preferred_words = []


    def assign_actions(self, actions_list):
        self.actions = actions_list
        self.process()

    def preprocess(self, text, removeSingle=True, removeStop=False, removeSpaces=True):
        # Put together string and replace comma/fullstop with space + convert to lowerCase
        full_text = text.replace(",", " ").replace(".", " ").lower()
        # Replace characters
        for x in symbols:
            full_text = full_text.replace(x, " ")
        # Remove double spaces
        full = re.sub(' +', ' ', full_text)
        # Split into words and convert into lowerCase
        words = full.split(" ")
        # Remove single character words
        if removeSingle:
            words = [w for w in words if len(w) >= 2]
        # Remove stop words
        if removeStop:
            words = [w for w in words if w not in stop_words_english]

        # Remove spaces
        if removeSpaces:
            words = [w for w in words if len(w) != 0]
        return words

    # Get how often a specific word is used
    def doc_freq(self, word):
        c = 0
        try:
            c = self.DF[word]
        except:
            pass
        return c

    def process(self):
        # Extract data
        self.processed_texts = []
        self.processed_titles = []
        self.processed_names = []
        self.processed_tags = []
        self.processed_category = []
        self.tags = []
        for action in self.actions[:len(self.actions)]:
            self.processed_texts.append(self.preprocess("{} {}".format(action["info"], action["tags"])))
            self.processed_titles.append(self.preprocess("{}".format(action["name"],removeStop=True)))
            self.processed_category.append(self.preprocess("{}".format(action["category"], removeStop=True)))
            # Extra info
            self.processed_names.append("".join(self.preprocess("{}".format(action["name"]),removeStop=True)))
            tags = self.preprocess(action["tags"])
            self.processed_tags.append(tags)
            for tag in tags:
                if tag not in self.tags:
                    self.tags.append(tag)

        # Calculating DF for all words
        self.DF = {}
        for i in range(len(self.actions)):
            for tokens in [self.processed_titles[i], self.processed_texts[i]]:
                for w in tokens:
                    try:
                        self.DF[w].add(i)
                    except:
                        self.DF[w] = {i}
        # Replace document link with word (maybe we dont need this?)
        for i in self.DF:
            self.DF[i] = len(self.DF[i])

        # Simple Stemming
        # self.all_words = []
        # self.banned_words = []
        # sorted_words = sorted([x for x in self.DF], key=len)
        # for word in sorted_words:
        #     if len(word) >= 4:
        #         words = [x for x in sorted_words if word in x and x.startswith(word)]
        #
        #         for word in words:
        #             extractions = [(x.replace(word, ""), x) for x in [w for w in words if w is not word]]
        #             for w in [x[1] for x in extractions if len(x[0]) <= 1]:
        #                 self.banned_words.append(w)
        #             if word not in self.banned_words:
        #                 self.all_words.append(word)
        #     else:
        #         self.all_words.append(word)
        self.all_words = sorted([x.lower() for x in self.DF], key=len)

        # Add category to all words
        category_list = list(set([item for sublist in self.processed_category for item in sublist]))
        category_list = [c for c in category_list if c not in stop_words_english]
        for cat in category_list:
            if cat not in self.all_words:
                self.all_words.append(cat)


        doc = 0
        self.tf_idf = {}

        # Good one
        for i in range(len(self.actions)):
            tokens = self.processed_texts[i] + self.processed_titles[i] + self.processed_tags[i] + self.processed_category[i]
            #tokens = self.processed_titles[i] + self.processed_texts[i]
            unice_tokens = sorted(set(tokens), key=lambda ele: tokens.count(ele))
            # Check how many times each word occur in the text
            counter_dict = Counter(tokens + self.processed_titles[i])
            # Get the total word count
            words_count = len(tokens + self.processed_titles[i])
            for token in unice_tokens:
                # tf = counter[token]/words_count
                tf = float(counter_dict[token]) / words_count
                df = self.doc_freq(token)
                idf = math.log((len(self.actions) + 1) / (df + 1))
                self.tf_idf[doc, token] = tf * idf
            doc += 1


        # self.doc_score = []
        # for i in range(len(self.actions)):
        #     tokens = self.processed_texts[i] + self.processed_titles[i] + self.processed_tags[i] + self.processed_category[i]
        #     unice_tokens = sorted(set(tokens), key=lambda ele: tokens.count(ele))
        #     self.doc_score.append(unice_tokens)
        #
        # for i in range(len(self.actions)):
        #     tokens = self.processed_texts[i]
        #     unice_tokens = sorted(set(tokens), key=lambda ele: tokens.count(ele))
        #     # Check how many times each word occur in the text
        #     counter_dict = Counter(tokens + self.processed_titles[i])
        #     # Get the total word count
        #     words_count = len(tokens + self.processed_titles[i])
        #     for token in unice_tokens:
        #         # tf = counter[token]/words_count
        #         tf = float(counter_dict[token]) / words_count
        #         df = self.doc_freq(token)
        #         idf = math.log((len(self.actions) + 1) / (df + 1))
        #         self.tf_idf[doc, token] = tf * idf
        #     doc += 1
        #
        # # Calculating TF-IDF for Title
        # doc = 0
        # self.tf_idf_title = {}
        # for i in range(len(self.actions)):
        #     tokens = self.processed_titles[i]
        #     unice_tokens = sorted(set(tokens), key=lambda ele: tokens.count(ele))
        #     counter = Counter(tokens + self.processed_texts[i])
        #     words_count = len(tokens + self.processed_texts[i])
        #
        #     for token in unice_tokens:
        #         tf = float(counter[token]) / words_count
        #         df = self.doc_freq(token)
        #         idf = math.log((len(self.actions) + 1) / (df + 1))  # numerator is added 1 to avoid negative values
        #         self.tf_idf_title[doc, token] = tf * idf
        #     doc += 1

        #self.tf_idf = self.tf_idf_title
        # Merging weights
        # for i in self.tf_idf:
        #     self.tf_idf[i] *= alpha
        #
        # for i in self.tf_idf_title:
        #     self.tf_idf[i] = self.tf_idf_title[i] * 2

    def set_preferred_search(self, query, limit=2):
        '''Set the preferred search variables based on the current query'''
        self.preferred_search = get_recommended_search(query)

        self.preferred_words = []
        if self.preferred_search is not None:
            if len(self.preferred_search) != 0:
                #self.preferred_words = list(set([x["name"].lower().split("@")[0] for x in self.preferred_search]))
                list_of_lists = [self.preprocess(x["name"].lower().split("@")[0], removeSingle=True, removeStop=True) for x in self.preferred_search]
                flatten_list = [x for y in list_of_lists for x in y]
                self.preferred_words = list(set(sorted(flatten_list, key=flatten_list.count, reverse=True)))[:limit]


    def simple_match(self, query, dev=True, recommend=True):
        '''
        Match everything and filter out the relevant ones
        :param query:
        :param dev:
        :param recommend:
        :return:
        '''
        start_time = time.time()

        preprocessed_query = self.preprocess(query, removeSingle=False, removeStop=False)

        # Generate Sort keys
        query_weights = {}
        for key in self.tf_idf:
            if key[1] in preprocessed_query:
                try:
                    query_weights[key[0]] += self.tf_idf[key]
                except:
                    query_weights[key[0]] = self.tf_idf[key]

        for index in query_weights:
            # Words from index
            words = self.doc_score[index]
            ref = preprocessed_query
            matches = [x for x in ref if x in words]
            if len(matches) >= 2:
                query_weights[index] *= len(matches)

        numbers = sorted(query_weights.items(), key=lambda x: x[1], reverse=True)

        # Apply sorting
        numbers = sorted(numbers, key=lambda x: x[1], reverse=True)

        # Create action list
        actions_list = [self.actions[i[0]] for i in numbers]

        end_time = time.time()
        total_time = end_time - start_time

        print("----------------")
        print("{} Results in {} seconds".format(len(numbers), total_time))
        print("Query:", query, "Splitted:", preprocessed_query)
        print(" ")
        for index, a in enumerate(actions_list[:30]):
            print("{index}: SCORE: {score}  NAME: '{name}'".format(index=index, score=a["score"], name=a["name"],info=a["info"], tags=a["tags"]))


    def title_match(self, query, return_amount=50, dev=False, recommended=True):
        # Pre-process the query
        preprocessed_query = self.preprocess(query, removeSingle=False, removeStop=False)
        combind_query = "".join(preprocessed_query)
        matching_words_query = []
        # preprocessed_query = [w for w in preprocessed_query if len(w) >= 1]

        # Set prefered search if appliable
        if recommended:
            self.set_preferred_search(query)
            matching_words_query = self.preferred_words
            if dev: print("matching_words_query from prefered:", matching_words_query)

        # # Check for similar words
        # combind_matching_words_query = "".join(matching_words_query)
        # for word in preprocessed_query:
        #     # Get matching words
        #     including_word = [x for x in self.all_words if word in x]
        #     if len(including_word) >= 1:
        #         for item in including_word[:5]:
        #             matching_words_query.append(item)
        #     else:
        #         matching_words_query.append(word)

        for word in preprocessed_query:
            # Get matching words
            matching_words = []
            including_word = [x for x in self.all_words if word in x]
            for x in including_word:
                ratio = difflib.SequenceMatcher(None, word, x).quick_ratio()
                if ratio >= 0.3:
                    # Score higher if the word start with the query
                    if x.startswith(word): ratio = ((1 - ratio) * 0.5) + ratio
                    matching_words.append([x, ratio])
            matches = [x[0] for x in sorted(matching_words, key=lambda e: e[1])[::-1]]
            if len(matches) >= 1:
                # matching_words_query.append(matches[0])
                # for x in matches:
                for x in matches[:5]:
                    if x not in matching_words_query:
                        matching_words_query.append(x)
            else:
                matching_words_query.append(word)

        if dev: print("matching_words_query after relative search:", matching_words_query)

        #### Generate Sort keys ####
        query_weights = {}
        for key in self.tf_idf:
            if key[1] in matching_words_query:
                try:
                    query_weights[key[0]] += self.tf_idf[key]
                except:
                    query_weights[key[0]] = self.tf_idf[key]

        numbers = sorted(query_weights.items(), key=lambda x: x[1], reverse=True)
        # Filter out the ones that dont have a score
        # numbers = [x for x in numbers if x[1] >= 0.01]

        # Sort by similarity to the title
        updated_numbers = []
        for id, score in numbers:
            # simple_name_split = self.processed_names[id]
            name_split = self.processed_titles[id]
            category_split = self.processed_category[id]
            tags = self.processed_tags[id]
            for word in preprocessed_query:
                # Check for title match
                for name in name_split:
                    if name.startswith(word):
                        ratio = difflib.SequenceMatcher(None, name, word).quick_ratio()
                        if ratio >= 0.5:
                            #print(word, ratio, ">", name_split)
                            score *= (10 + ratio)

                # Check for tag match
                for tag in tags:
                    if word in tag: score *= 1.5

                # Check for category match
                for cat in category_split:
                    if word in cat: score *= 1.2

            # Match by closeness to the title
            ratio = difflib.SequenceMatcher(None, combind_query, self.processed_names[id]).quick_ratio()
            if ratio >= 0.8:
                score *= (2 + ratio)
            # If title starts with word
            if self.processed_names[id].startswith(combind_query):
                #print("Found a match you might like", self.processed_names[id])
                score *= 3

            updated_numbers.append((id, score))
        numbers = updated_numbers

        # Resort by value
        #numbers = sorted(query_weights.items(), key=lambda x: x[1], reverse=True)

        # Create action list and assign score
        #actions_list = [self.actions[i[0]] for i in numbers]

        # Assign score based on current score
        actions_list = []
        for id, score in numbers:
            action = self.actions[id]

            if score >= 0.01:
                action["score"] = score
                actions_list.append(action)
            #print(actions_list[id], score)
            #actions_list[id]["score"] = score


        # Assign score based on ranking
        #number_range = range(len(actions_list))[::-1]
        #for i, action in enumerate(actions_list):
        #    action["score"] = number_range[i]

        #Sort actions
        # print("----------------")
        # print("Result", len(numbers))
        # print("Query", query, preprocessed_query)
        # print("Similar Querys", matching_words_query)
        # for index, a in enumerate(actions_list):
        #     print(index, a["score"], "NAME:", a["name"], ":INFO:", a["info"], "TAGS:", a["tags"])

        if recommended:
            if (self.preferred_search != None):
                if (len(self.preferred_search) >= 1):
                    for item in actions_list:
                        lower_name = item["name"].lower()
                        # for prefered in preferedList:
                        for number, prefered in enumerate(sorted(self.preferred_search, key=lambda object: object['score'])[::-1]):
                            if lower_name == prefered["name"].lower():
                                # Get current Score
                                base_score = item["score"]
                                item["score"] += (10 * int(prefered["score"]))
                            elif "@" in prefered["name"]:
                                if prefered["name"].lower().split("@")[-1] == item["category"].lower():
                                    item["score"] += (10 * int(prefered["score"]))

        #actions_list = sorted(actions_list, key=lambda input: input["score"])[::-1]



        return actions_list

    def matching_score(self, query, return_amount=50, dev=False, recommended=True):
        '''
        :param return_amount: Items to return
        :param query: What you are searching for
        :return:
        '''

        #### Get prefered search ####
        if recommended:
            self.set_preferred_search(query)

        preprocessed_query = self.preprocess(query, removeSingle=False, removeStop=False)
        preprocessed_query = [w for w in preprocessed_query if len(w) >= 1]
        if recommended:
            matching_words_query = self.preferred_words
            if dev: print("matching_words_query from prefered:", matching_words_query)
        else:
            matching_words_query = []
        combind_query = "".join(preprocessed_query)
        combind_matching_words_query = "".join(matching_words_query)
        for word in preprocessed_query:
            # Get matching words
            matching_words = []
            including_word = [x for x in self.all_words if word in x]
            for x in including_word:
                ratio = difflib.SequenceMatcher(None, word, x).quick_ratio()
                if ratio >= 0.3:
                    # Score higher if the word start with the query
                    if x.startswith(word): ratio = ((1 - ratio) * 0.5) + ratio
                    matching_words.append([x, ratio])
            matches = [x[0] for x in sorted(matching_words, key=lambda e: e[1])[::-1]]
            if len(matches) >= 1:
                # matching_words_query.append(matches[0])
                # for x in matches:
                for x in matches[:5]:
                    if x not in matching_words_query:
                        matching_words_query.append(x)
            # else:
            #     matching_words_query.append(word)

        if dev: print("matching_words_query after relative search:", matching_words_query)

        #### Generate Sort keys ####
        query_weights = {}
        for key in self.tf_idf:
            if key[1] in matching_words_query:
                try:
                    query_weights[key[0]] += self.tf_idf[key]
                except:
                    query_weights[key[0]] = self.tf_idf[key]

        # Assign data and library
        numbers = sorted(query_weights.items(), key=lambda x: x[1], reverse=True)

        # Factors (increse to get higher ranking)
        title_factor = 2.0

        # Filter out the ones that dont have a score
        numbers = [x for x in numbers if x[1] >= 0.01]

        # Score by matches to title by word
        if dev: print("Score by Match to Title BY word")
        temp_numbers = []
        for id in numbers:
            score = float(id[1])
            for i, word in enumerate(matching_words_query):
                if word in self.processed_titles[id[0]]:
                    factor = float(len(matching_words_query)) / len(self.processed_titles[id[0]])
                    score = id[1] + (factor * title_factor)
                    if self.processed_titles[id[0]][0].startswith(word):
                        if dev: print("MATCH BY Start with Query:", self.processed_titles[id[0]][0], word)
                        score *= 1.5
            temp_numbers.append((id[0], score))
        numbers = temp_numbers

        # Score TITLE By Combinded query
        temp_numbers = []
        if dev: print("Match By Combind Query")
        for id in numbers:
            score = float(id[1])
            name_id_combind = "".join(self.processed_names[id[0]])
            if combind_query in name_id_combind:
                if dev: print("COMB:", combind_query, name_id_combind)
                ratio = difflib.SequenceMatcher(None, combind_query, name_id_combind).quick_ratio()
                score *= (10 * ratio)
                if dev: print(self.processed_titles[id[0]][0], combind_query,
                              self.processed_titles[id[0]][0].startswith(combind_query))
                if self.processed_titles[id[0]][0].startswith(combind_query):
                    score *= (10 * ratio)
                    if dev: print("START WITH MATCH:", self.processed_titles[id[0]][0], combind_query)
            temp_numbers.append((id[0], score))
        numbers = temp_numbers

        # Score TAGS By Combinded query
        temp_numbers = []
        if dev: print("Match Tags Combind Query")
        for id in numbers:
            score = float(id[1])
            for i, word in enumerate(matching_words_query):
                matches = [x for x in self.processed_tags[id[0]] if word in x]
                if len(matches) != 0:
                    for match in matches:
                        factor = float(len(word)) / len(match)
                        score = id[1] + (factor * title_factor)
                        if self.processed_tags[id[0]][0].startswith(word):
                            score *= 1.5
            temp_numbers.append((id[0], score))
        numbers = temp_numbers

        # Apply sorting
        numbers = sorted(numbers, key=lambda x: x[1], reverse=True)

        # Create action list
        actions_list = [self.actions[i[0]] for i in numbers][:return_amount]

        # Assign score based on ranking
        number_range = range(len(actions_list))[::-1]
        for i, action in enumerate(actions_list):
            action["score"] = number_range[i]

        if recommended:
            if (self.preferred_search != None):
                if (len(self.preferred_search) >= 1):
                    for item in actions_list:
                        lower_name = item["name"].lower()
                        # for prefered in preferedList:
                        for number, prefered in enumerate(
                                sorted(self.preferred_search, key=lambda object: object['score'])[::-1]):
                            if lower_name == prefered["name"].lower():
                                # Get current Score
                                item["score"] += (10 * int(prefered["score"]))
                            elif "@" in prefered["name"]:
                                if prefered["name"].lower().split("@")[-1] == item["category"].lower():
                                    item["score"] += (10 * int(prefered["score"]))

        if dev:
            print("----------------")
            print("Result", len(numbers))
            print("Query", query, preprocessed_query)
            print("Similar Querys", matching_words_query)
            for index, a in enumerate(actions_list):
                print(index, a["score"], "NAME:", a["name"], ":INFO:", a["info"], "TAGS:", a["tags"])

        return actions_list

# All cosmos Actions
#cosmos_actions = cosmos.library.cosmosCommandList
#maya_commands = cosmos.mayaCommandList
#all_actions = cosmos_actions + maya_commands

# Assign data and library
#data = action_library_data()
#data.assign_actions(all_actions)

# actions = data.matching_score("hello")

#for i, a in enumerate(data.matching_score("Face te")):
#    print(i, a["name"], " >", a["info"])
