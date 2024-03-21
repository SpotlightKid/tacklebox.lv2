import("stdfaust.lib");


stage1LowShelfFrequency = hslider("stage1LowShelfFrequency", 100, 10, 1000, 0.01);
stage1LowShelfQ = hslider("stage1LowShelfQ", 1, 1, 32, 0.01);
stage1LowShelfGain = hslider("stage1LowShelfGain", 0, -32, 92, 0.01);

stage1HighShelfFrequency = hslider("stage1HighShelfFrequency", 8000, 1000, 20000, 0.01);
stage1HighShelfQ = hslider("stage1HighShelfQ", 1, 1, 32, 0.01);
stage1HighShelfGain = hslider("stage1HighShelfGain", 0, -32, 92, 0.01);

stage1Bell1Frequency = hslider("stage1Bell1Frequency", 200, 10, 1000, 0.01);
stage1Bell1Q = hslider("stage1Bell1Q", 1, 1, 32, 0.01);
stage1Bell1Gain = hslider("stage1Bell1Gain", 0, -32, 92, 0.01);

stage1Bell2Frequency = hslider("stage1Bell2Frequency", 500, 10, 3000, 0.01);
stage1Bell2Q = hslider("stage1Bell2Q", 1, 1, 32, 0.01);
stage1Bell2Gain = hslider("stage1Bell2Gain", 0, -32, 92, 0.01);

stage1Bell3Frequency = hslider("stage1Bell3Frequency", 2000, 10, 8000, 0.01);
stage1Bell3Q = hslider("stage1Bell3Q", 1, 1, 32, 0.01);
stage1Bell3Gain = hslider("stage1Bell3Gain", 0, -32, 92, 0.01);

stage1Gain = hslider("stage1Gain", 0, -36, 92, 0.1) : ba.db2linear;



stage2LowShelfFrequency = hslider("stage2LowShelfFrequency", 100, 10, 1000, 0.01);
stage2LowShelfQ = hslider("stage2LowShelfQ", 1, 1, 32, 0.01);
stage2LowShelfGain = hslider("stage2LowShelfGain", 0, -32, 92, 0.01);

stage2HighShelfFrequency = hslider("stage2HighShelfFrequency", 8000, 1000, 20000, 0.01);
stage2HighShelfQ = hslider("stage2HighShelfQ", 1, 1, 32, 0.01);
stage2HighShelfGain = hslider("stage2HighShelfGain", 0, -32, 92, 0.01);

stage2Bell1Frequency = hslider("stage2Bell1Frequency", 200, 10, 1000, 0.01);
stage2Bell1Q = hslider("stage2Bell1Q", 1, 1, 32, 0.01);
stage2Bell1Gain = hslider("stage2Bell1Gain", 0, -32, 92, 0.01);

stage2Bell2Frequency = hslider("stage2Bell2Frequency", 500, 10, 3000, 0.01);
stage2Bell2Q = hslider("stage2Bell2Q", 1, 1, 32, 0.01);
stage2Bell2Gain = hslider("stage2Bell2Gain", 0, -32, 92, 0.01);

stage2Bell3Frequency = hslider("stage2Bell3Frequency", 2000, 10, 8000, 0.01);
stage2Bell3Q = hslider("stage2Bell3Q", 1, 1, 32, 0.01);
stage2Bell3Gain = hslider("stage2Bell3Gain", 0, -32, 92, 0.01);

stage2Gain = hslider("stage2Gain", 0, -36, 92, 0.1) : ba.db2linear;


stage3LowShelfFrequency = hslider("stage3LowShelfFrequency", 100, 10, 1000, 0.01);
stage3LowShelfQ = hslider("stage3LowShelfQ", 1, 1, 32, 0.01);
stage3LowShelfGain = hslider("stage3LowShelfGain", 0, -32, 92, 0.01);

stage3HighShelfFrequency = hslider("stage3HighShelfFrequency", 8000, 1000, 20000, 0.01);
stage3HighShelfQ = hslider("stage3HighShelfQ", 1, 1, 32, 0.01);
stage3HighShelfGain = hslider("stage3HighShelfGain", 0, -32, 92, 0.01);

stage3Bell1Frequency = hslider("stage3Bell1Frequency", 200, 10, 1000, 0.01);
stage3Bell1Q = hslider("stage3Bell1Q", 1, 1, 32, 0.01);
stage3Bell1Gain = hslider("stage3Bell1Gain", 0, -32, 92, 0.01);

stage3Bell2Frequency = hslider("stage3Bell2Frequency", 500, 10, 3000, 0.01);
stage3Bell2Q = hslider("stage3Bell2Q", 1, 1, 32, 0.01);
stage3Bell2Gain = hslider("stage3Bell2Gain", 0, -32, 92, 0.01);

stage3Bell3Frequency = hslider("stage3Bell3Frequency", 2000, 10, 8000, 0.01);
stage3Bell3Q = hslider("stage3Bell3Q", 1, 1, 32, 0.01);
stage3Bell3Gain = hslider("stage3Bell3Gain", 0, -32, 92, 0.01);

stage3Gain = hslider("stage3Gain", 0, -36, 92, 0.1) : ba.db2linear;

stage4Gain = hslider("stage4Gain", 0, -36, 92, 0.1) : ba.db2linear;


process = 
    fi.svf.ls(stage1LowShelfFrequency, stage1LowShelfQ, stage1LowShelfGain)
  : fi.svf.hs(stage1HighShelfFrequency, stage1HighShelfQ, stage1HighShelfGain)
  : fi.svf.bell(stage1Bell1Frequency, stage1Bell1Q, stage1Bell1Gain)
  : fi.svf.bell(stage1Bell2Frequency, stage1Bell2Q, stage1Bell2Gain)
  : fi.svf.bell(stage1Bell3Frequency, stage1Bell3Q, stage1Bell3Gain) * stage1Gain
  : aa.tanh1
  : fi.svf.ls(stage2LowShelfFrequency, stage2LowShelfQ, stage2LowShelfGain)
  : fi.svf.hs(stage2HighShelfFrequency, stage2HighShelfQ, stage2HighShelfGain)
  : fi.svf.bell(stage2Bell1Frequency, stage2Bell1Q, stage2Bell1Gain)
  : fi.svf.bell(stage2Bell2Frequency, stage2Bell2Q, stage2Bell2Gain)
  : fi.svf.bell(stage2Bell3Frequency, stage2Bell3Q, stage2Bell3Gain) * stage2Gain
  : aa.tanh1
  : fi.svf.ls(stage3LowShelfFrequency, stage3LowShelfQ, stage3LowShelfGain)
  : fi.svf.hs(stage3HighShelfFrequency, stage3HighShelfQ, stage3HighShelfGain)
  : fi.svf.bell(stage3Bell1Frequency, stage3Bell1Q, stage3Bell1Gain)
  : fi.svf.bell(stage3Bell2Frequency, stage3Bell2Q, stage3Bell2Gain)
  : fi.svf.bell(stage3Bell3Frequency, stage3Bell3Q, stage3Bell3Gain) * stage3Gain
  : aa.tanh1 * stage4Gain
  ;
