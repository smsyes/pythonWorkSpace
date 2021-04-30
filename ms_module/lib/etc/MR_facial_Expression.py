body_face_BS.eyebrow_inner_down_R=clamp(0,1,brow_R.translateX);
body_face_BS.eyebrow_inner_up_R=clamp(0,1,-brow_R.translateX);
body_face_BS.eyebrow_inner_down_L=clamp(0,1,brow_L.translateX);
body_face_BS.eyebrow_inner_up_L=clamp(0,1,-brow_L.translateX);
body_face_BS.eyebrow_squeeze_L=clamp(0,10,brow_L.squeeze)*0.1;
body_face_BS.eyebrow_squeeze_R=clamp(0,10,brow_R.squeeze)*0.1;
body_face_BS.eyebrow_outer_up_L=clamp(0,10,brow_L.outerUpDown)*0.1;
body_face_BS.eyebrow_outer_up_R=clamp(0,10,brow_R.outerUpDown)*0.1;
body_face_BS.eyebrow_up_L=clamp(0,1,brow_L.translateY); 
body_face_BS.eyebrow_down_L=clamp(0,1,-brow_L.translateY);
body_face_BS.eyebrow_up_R=clamp(0,1,brow_R.translateY); 
body_face_BS.eyebrow_down_R=clamp(0,1,-brow_R.translateY);

body_face_BS.nose_wide_L=clamp(0,1,nose_L.translateX);
body_face_BS.nose_narrow_L=clamp(0,1,-nose_L.translateX);
body_face_BS.nose_up_L=clamp(0,1,nose_L.translateY);
body_face_BS.nose_up_R=clamp(0,1,nose_R.translateY);
body_face_BS.nose_wide_R=clamp(0,1,nose_R.translateX);
body_face_BS.nose_narrow_R=clamp(0,1,-nose_R.translateX);

body_face_BS.cheek_up_L=clamp(0,1,cheek_L.translateY);
body_face_BS.cheek_wide_L=clamp(0,1,cheek_L.translateX);
body_face_BS.cheek_narrow_L=clamp(0,1,-cheek_L.translateX);
body_face_BS.cheek_up_R=clamp(0,1,cheek_R.translateY);
body_face_BS.cheek_wide_R=clamp(0,1,cheek_R.translateX);
body_face_BS.cheek_narrow_R=clamp(0,1,-cheek_R.translateX);

body_face_BS.mouth_wide_L = clamp(0,1, mouthCorner_L.translateX);
body_face_BS.mouth_narrow_L = clamp(0,1, -mouthCorner_L.translateX);
body_face_BS.mouth_wide_R = clamp(0,1, mouthCorner_R.translateX);
body_face_BS.mouth_narrow_R = clamp(0,1, -mouthCorner_R.translateX);
body_face_BS.mouth_outer_up_L=clamp(0,1,mouthCorner_L.translateY); 
body_face_BS.mouth_outer_down_L=clamp(0,1,-mouthCorner_L.translateY);
body_face_BS.mouth_outer_up_R=clamp(0,1,mouthCorner_R.translateY); 
body_face_BS.mouth_outer_down_R=clamp(0,1,-mouthCorner_R.translateY);

body_face_BS.mouth_phonemeEe_R=clamp(0,10,mouth_M.phonemeEeR)*0.1;
body_face_BS.mouth_phonemeEe_L=clamp(0,10,mouth_M.phonemeEeL)*0.1;
body_face_BS.mouth_phonemeBMP=clamp(0,10,mouth_M.phonemeBMP)*0.1;
body_face_BS.mouth_phonemeOh=clamp(0,10,mouth_M.phonemeOh)*0.1;
body_face_BS.mouth_phonemeUw=clamp(0,10,mouth_M.phonemeUw)*0.1;
body_face_BS.mouth_phonemeUh = clamp(0,10,mouth_M.PhonemeUh)*0.1;
body_face_BS.mouth_phonemeFv=clamp(0,10,mouth_M.phonemeFv)*0.1;
body_face_BS.mouth_angry=clamp(0,10,mouth_M.Angry)*0.1;
body_face_BS.mouth_smile=clamp(0,10,mouth_M.smile)*0.1;
body_face_BS.mouth_sneer_L=clamp(0,10,mouth_M.sneerL)*0.1;
body_face_BS.mouth_sneer_R=clamp(0,10,mouth_M.sneerR)*0.1;
body_face_BS.mouth_open=clamp(0,1,-mouth_M.translateY);
body_face_BS.mouth_phoneme_big_A=clamp(0,10,mouth_M.phonemeBigA)*0.1;
body_face_BS.mouth_wide = clamp(0,1,mouth_M.translateX);
body_face_BS.mouth_narrow = clamp(0,1,-mouth_M.translateX);
body_face_BS.mouth_upper_roll = clamp(0,10,mouth_M.upperRoll)*0.1;
body_face_BS.mouth_lower_roll = clamp(0,10,mouth_M.lowerRoll)*0.1;

mouth_joint_uiGRP.translateY=clamp(0,1,mouth_M.translateY)*0.1;
mouth_joint_uiGRP.translateZ=clamp(0,1,mouth_M.translateY)*0.070;

mouth_tongue_BS.mouth_open=clamp(0,1,-mouth_M.translateY);
mouth_tongue_BS.mouth_phoneme_big_A=clamp(0,10,mouth_M.phonemeBigA)*0.1;
mouth_toothDown_BS.mouth_open=clamp(0,1,-mouth_M.translateY);
mouth_toothDown_BS.mouth_phoneme_big_A=clamp(0,10,mouth_M.phonemeBigA)*0.1;