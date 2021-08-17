# json import test

import json

with open('test.json')as json_file:
    json_data = json.load(json_file)

json_name = json_data["test_name"]
print(json_name)

json_type = json_data["test_type"]
print(json_type)

json_other = json_data["test_other"]
print(json_other)

json_otherType = json_data["test_otherType"]
json_otherName = json_otherType["name"]
print(json_otherName)

json_bool = json_data["test_bool"]
print(json_bool)