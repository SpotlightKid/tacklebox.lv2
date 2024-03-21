import("stdfaust.lib");


stage1LowShelfFrequency = hslider("Stage 1 - LowShelf - Frequency", 100, 10, 1000, 0.01);
stage1LowShelfQ = hslider("Stage 1 - LowShelf - Q", 1, 1, 32, 0.01);
stage1LowShelfGain = hslider("Stage 1 - LowShelf - Gain", 0, -32, 92, 0.01);

stage1HighShelfFrequency = hslider("Stage 1 - HighShelf - Frequency", 8000, 1000, 20000, 0.01);
stage1HighShelfQ = hslider("Stage 1 - HighShelf - Q", 1, 1, 32, 0.01);
stage1HighShelfGain = hslider("Stage 1 - HighShelf - Gain", 0, -32, 92, 0.01);

stage1Bell1Frequency = hslider("Stage 1 - Bell 1 - Frequency", 200, 10, 1000, 0.01);
stage1Bell1Q = hslider("Stage 1 - Bell 1 - Q", 1, 1, 32, 0.01);
stage1Bell1Gain = hslider("Stage 1 - Bell 1 - Gain", 0, -32, 92, 0.01);

stage1Bell2Frequency = hslider("Stage 1 - Bell 2 - Frequency", 500, 10, 3000, 0.01);
stage1Bell2Q = hslider("Stage 1 - Bell 2 - Q", 1, 1, 32, 0.01);
stage1Bell2Gain = hslider("Stage 1 - Bell 2 - Gain", 0, -32, 92, 0.01);

stage1Bell3Frequency = hslider("Stage 1 - Bell 3 - Frequency", 2000, 10, 8000, 0.01);
stage1Bell3Q = hslider("Stage 1 - Bell 3 - Q", 1, 1, 32, 0.01);
stage1Bell3Gain = hslider("Stage 1 - Bell 3 - Gain", 0, -32, 92, 0.01);

stage1Gain = hslider("Stage 1 -  - Gain", 0, -36, 92, 0.1) : ba.db2linear;



stage2LowShelfFrequency = hslider("Stage 2 - LowShelf - Frequency", 100, 10, 1000, 0.01);
stage2LowShelfQ = hslider("Stage 2 - LowShelf - Q", 1, 1, 32, 0.01);
stage2LowShelfGain = hslider("Stage 2 - LowShelf - Gain", 0, -32, 92, 0.01);

stage2HighShelfFrequency = hslider("Stage 2 - HighShelf - Frequency", 8000, 1000, 20000, 0.01);
stage2HighShelfQ = hslider("Stage 2 - HighShelf - Q", 1, 1, 32, 0.01);
stage2HighShelfGain = hslider("Stage 2 - HighShelf - Gain", 0, -32, 92, 0.01);

stage2Bell1Frequency = hslider("Stage 2 - Bell 1 - Frequency", 200, 10, 1000, 0.01);
stage2Bell1Q = hslider("Stage 2 - Bell 1 - Q", 1, 1, 32, 0.01);
stage2Bell1Gain = hslider("Stage 2 - Bell 1 - Gain", 0, -32, 92, 0.01);

stage2Bell2Frequency = hslider("Stage 2 - Bell 2 - Frequency", 500, 10, 3000, 0.01);
stage2Bell2Q = hslider("Stage 2 - Bell 2 - Q", 1, 1, 32, 0.01);
stage2Bell2Gain = hslider("Stage 2 - Bell 2 - Gain", 0, -32, 92, 0.01);

stage2Bell3Frequency = hslider("Stage 2 - Bell 3 - Frequency", 2000, 10, 8000, 0.01);
stage2Bell3Q = hslider("Stage 2 - Bell 3 - Q", 1, 1, 32, 0.01);
stage2Bell3Gain = hslider("Stage 2 - Bell 3 - Gain", 0, -32, 92, 0.01);

stage2Gain = hslider("Stage 2 -  - Gain", 0, -36, 92, 0.1) : ba.db2linear;


stage3LowShelfFrequency = hslider("Stage 3 - LowShelf - Frequency", 100, 10, 1000, 0.01);
stage3LowShelfQ = hslider("Stage 3 - LowShelf - Q", 1, 1, 32, 0.01);
stage3LowShelfGain = hslider("Stage 3 - LowShelf - Gain", 0, -32, 92, 0.01);

stage3HighShelfFrequency = hslider("Stage 3 - HighShelf - Frequency", 8000, 1000, 20000, 0.01);
stage3HighShelfQ = hslider("Stage 3 - HighShelf - Q", 1, 1, 32, 0.01);
stage3HighShelfGain = hslider("Stage 3 - HighShelf - Gain", 0, -32, 92, 0.01);

stage3Bell1Frequency = hslider("Stage 3 - Bell 1 - Frequency", 200, 10, 1000, 0.01);
stage3Bell1Q = hslider("Stage 3 - Bell 1 - Q", 1, 1, 32, 0.01);
stage3Bell1Gain = hslider("Stage 3 - Bell 1 - Gain", 0, -32, 92, 0.01);

stage3Bell2Frequency = hslider("Stage 3 - Bell 2 - Frequency", 500, 10, 3000, 0.01);
stage3Bell2Q = hslider("Stage 3 - Bell 2 - Q", 1, 1, 32, 0.01);
stage3Bell2Gain = hslider("Stage 3 - Bell 2 - Gain", 0, -32, 92, 0.01);

stage3Bell3Frequency = hslider("Stage 3 - Bell 3 - Frequency", 2000, 10, 8000, 0.01);
stage3Bell3Q = hslider("Stage 3 - Bell 3 - Q", 1, 1, 32, 0.01);
stage3Bell3Gain = hslider("Stage 3 - Bell 3 - Gain", 0, -32, 92, 0.01);

stage3Gain = hslider("Stage 3 -  - Gain", 0, -36, 92, 0.1) : ba.db2linear;

stage4Gain = hslider("stage4 - Gain", 0, -36, 92, 0.1) : ba.db2linear;


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
