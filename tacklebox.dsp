import("stdfaust.lib");


stage1LowShelfFrequency = hslider("stage1LowShelfFrequency", 100, 10, 1000, 0.01);
stage1LowShelfQ = hslider("stage1LowShelfQ", 100, 10, 1000, 0.01);
stage1LowShelfGain = hslider("stage1LowShelfGain", 100, 10, 1000, 0.01);

stage1HighShelfFrequency = hslider("stage1HighShelfFrequency", 100, 10, 1000, 0.01);
stage1HighShelfQ = hslider("stage1HighShelfQ", 100, 10, 1000, 0.01);
stage1HighShelfGain = hslider("stage1HighShelfGain", 100, 10, 1000, 0.01);

stage1Bell1Frequency = hslider("stage1Bell1Frequency", 100, 10, 1000, 0.01);
stage1Bell1Q = hslider("stage1Bell1Q", 100, 10, 1000, 0.01);
stage1Bell1Gain = hslider("stage1Bell1Gain", 100, 10, 1000, 0.01);

stage1Bell2Frequency = hslider("stage1Bell2Frequency", 100, 10, 1000, 0.01);
stage1Bell2Q = hslider("stage1Bell2Q", 100, 10, 1000, 0.01);
stage1Bell2Gain = hslider("stage1Bell2Gain", 100, 10, 1000, 0.01);

stage1Bell3Frequency = hslider("stage1Bell3Frequency", 100, 10, 1000, 0.01);
stage1Bell3Q = hslider("stage1Bell3Q", 100, 10, 1000, 0.01);
stage1Bell3Gain = hslider("stage1Bell3Gain", 100, 10, 1000, 0.01);

stage1Gain = hslider("stage1Gain", 0, -36, 92, 0.1);



stage2LowShelfFrequency = hslider("stage2LowShelfFrequency", 100, 10, 1000, 0.01);
stage2LowShelfQ = hslider("stage2LowShelfQ", 100, 10, 1000, 0.01);
stage2LowShelfGain = hslider("stage2LowShelfGain", 100, 10, 1000, 0.01);

stage2HighShelfFrequency = hslider("stage2HighShelfFrequency", 100, 10, 1000, 0.01);
stage2HighShelfQ = hslider("stage2HighShelfQ", 100, 10, 1000, 0.01);
stage2HighShelfGain = hslider("stage2HighShelfGain", 100, 10, 1000, 0.01);

stage2Bell1Frequency = hslider("stage2Bell1Frequency", 100, 10, 1000, 0.01);
stage2Bell1Q = hslider("stage2Bell1Q", 100, 10, 1000, 0.01);
stage2Bell1Gain = hslider("stage2Bell1Gain", 100, 10, 1000, 0.01);

stage2Bell2Frequency = hslider("stage2Bell2Frequency", 100, 10, 1000, 0.01);
stage2Bell2Q = hslider("stage2Bell2Q", 100, 10, 1000, 0.01);
stage2Bell2Gain = hslider("stage2Bell2Gain", 100, 10, 1000, 0.01);

stage2Bell3Frequency = hslider("stage2Bell3Frequency", 100, 10, 1000, 0.01);
stage2Bell3Q = hslider("stage2Bell3Q", 100, 10, 1000, 0.01);
stage2Bell3Gain = hslider("stage2Bell3Gain", 100, 10, 1000, 0.01);

stage2Gain = hslider("stage2Gain", 0, -36, 92, 0.1);


stage3LowShelfFrequency = hslider("stage3LowShelfFrequency", 100, 10, 1000, 0.01);
stage3LowShelfQ = hslider("stage3LowShelfQ", 100, 10, 1000, 0.01);
stage3LowShelfGain = hslider("stage3LowShelfGain", 100, 10, 1000, 0.01);

stage3HighShelfFrequency = hslider("stage3HighShelfFrequency", 100, 10, 1000, 0.01);
stage3HighShelfQ = hslider("stage3HighShelfQ", 100, 10, 1000, 0.01);
stage3HighShelfGain = hslider("stage3HighShelfGain", 100, 10, 1000, 0.01);

stage3Bell1Frequency = hslider("stage3Bell1Frequency", 100, 10, 1000, 0.01);
stage3Bell1Q = hslider("stage3Bell1Q", 100, 10, 1000, 0.01);
stage3Bell1Gain = hslider("stage3Bell1Gain", 100, 10, 1000, 0.01);

stage3Bell2Frequency = hslider("stage3Bell2Frequency", 100, 10, 1000, 0.01);
stage3Bell2Q = hslider("stage3Bell2Q", 100, 10, 1000, 0.01);
stage3Bell2Gain = hslider("stage3Bell2Gain", 100, 10, 1000, 0.01);

stage3Bell3Frequency = hslider("stage3Bell3Frequency", 100, 10, 1000, 0.01);
stage3Bell3Q = hslider("stage3Bell3Q", 100, 10, 1000, 0.01);
stage3Bell3Gain = hslider("stage3Bell3Gain", 100, 10, 1000, 0.01);

stage3Gain = hslider("stage3Gain", 0, -36, 92, 0.1);

process = fi.svf.ls(stage1LowShelfFrequency, stage1LowShelfQ, stage1LowShelfGain);

