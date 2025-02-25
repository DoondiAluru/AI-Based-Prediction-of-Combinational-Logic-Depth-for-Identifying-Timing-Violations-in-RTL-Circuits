/* Generated by Yosys 0.38+113 (git sha1 91fbd5898, clang++ 14.0.0-1ubuntu1.1 -fPIC -Os) */

module array_multiplier_4bit(A, B, P);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  input [3:0] A;
  wire [3:0] A;
  input [3:0] B;
  wire [3:0] B;
  output [7:0] P;
  wire [7:0] P;
  wire [3:0] pp0;
  wire [7:0] sum3;
  assign _000_ = B[0] & A[1];
  assign _001_ = B[1] & A[0];
  assign P[1] = _001_ ^ _000_;
  assign _002_ = ~(B[0] & A[2]);
  assign _003_ = ~(B[1] & A[1]);
  assign _004_ = _003_ ^ _002_;
  assign _005_ = ~(B[2] & A[0]);
  assign _006_ = _005_ ^ _004_;
  assign _007_ = _001_ & _000_;
  assign _008_ = ~_007_;
  assign P[2] = _008_ ^ _006_;
  assign _009_ = ~(B[1] & A[3]);
  assign _010_ = ~(B[2] & A[2]);
  assign _011_ = _010_ ^ _009_;
  assign _012_ = A[1] & B[3];
  assign _013_ = _012_ ^ _011_;
  assign _014_ = ~(B[0] & A[3]);
  assign _015_ = B[1] & A[2];
  assign _016_ = _014_ | ~(_015_);
  assign _017_ = B[2] & A[1];
  assign _018_ = _015_ ^ _014_;
  assign _019_ = _017_ & ~(_018_);
  assign _020_ = _016_ & ~(_019_);
  assign _021_ = _020_ ^ _013_;
  assign _022_ = ~(_018_ ^ _017_);
  assign _023_ = _003_ | _002_;
  assign _024_ = _004_ & ~(_005_);
  assign _025_ = _023_ & ~(_024_);
  assign _026_ = _025_ | ~(_022_);
  assign _027_ = B[3] & A[0];
  assign _028_ = _025_ ^ _022_;
  assign _029_ = _027_ & ~(_028_);
  assign _030_ = _026_ & ~(_029_);
  assign _031_ = ~(_030_ ^ _021_);
  assign _032_ = ~(_028_ ^ _027_);
  assign _033_ = _008_ | _006_;
  assign _034_ = _032_ & ~(_033_);
  assign P[4] = ~(_034_ ^ _031_);
  assign _035_ = B[2] & A[3];
  assign _036_ = A[2] & B[3];
  assign _037_ = _036_ ^ _035_;
  assign _038_ = _010_ | _009_;
  assign _039_ = _012_ & _011_;
  assign _040_ = _038_ & ~(_039_);
  assign _041_ = _040_ ^ _037_;
  assign _042_ = _020_ | ~(_013_);
  assign _043_ = ~(_042_ ^ _041_);
  assign _044_ = _030_ | _021_;
  assign _045_ = _034_ & ~(_031_);
  assign _046_ = _044_ & ~(_045_);
  assign P[5] = _046_ ^ _043_;
  assign _047_ = A[3] & B[3];
  assign _048_ = _036_ & _035_;
  assign _049_ = ~(_048_ ^ _047_);
  assign _050_ = _037_ & ~(_040_);
  assign _051_ = _050_ ^ _049_;
  assign _052_ = _042_ | _041_;
  assign _053_ = ~(_044_ | _043_);
  assign _054_ = _052_ & ~(_053_);
  assign _055_ = _043_ | _031_;
  assign _056_ = _034_ & ~(_055_);
  assign _057_ = _054_ & ~(_056_);
  assign P[6] = _057_ ^ _051_;
  assign _058_ = ~(_048_ & _047_);
  assign _059_ = _049_ | ~(_050_);
  assign _060_ = ~(_057_ | _051_);
  assign _061_ = _059_ & ~(_060_);
  assign P[7] = _061_ ^ _058_;
  assign P[3] = ~(_033_ ^ _032_);
  assign P[0] = B[0] & A[0];
  assign pp0[0] = P[0];
  assign sum3 = P;
endmodule
