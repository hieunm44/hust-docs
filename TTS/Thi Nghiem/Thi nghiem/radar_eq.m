function [out_par] = radar_eq(pt,freq,g,sigma,te,b,nf,loss,input_par,option,rcs_delta1,rcs_delta2,pt_percent1,pt_percent2)
c=3.0e+8;
lambda = c/freq;
p_peak = base10_to_dB(pt);
lambda_sq = lambda^2;
lambda_sqdb = base10_to_dB(lambda_sq);
sigmadb = base10_to_dB(sigma);
for_pi_cub = base10_to_dB((4.0*pi)^3);
k_db = base10_to_dB(1.38e-23);
te_db = base10_to_dB(te);
b_db = base_to_dB(b);
if(option==1)
    temp = p_peak +2.*g +lambda_sqdb + sigmadb- for_pi_cub - k_db - te_db - b_db -nf - loss - input_par;
    out_par = dB_to_base10(temp)^(1/4);
    %---------------------------------------------------------------------------------------
    sigmap = rcs_delta + sigmadb;
    sigmam = sigmadb - rcs_delta2;
    
    pt05 = p_peak + base10_todB(pt_percent1);
    pt200 = p_peak + base10_todB(pt_percent2);
    index = 0 ;
    
    for snrvar = intput_par*.5:1:input_par*1.5;
        index = index + 1 ;
        range1(index) = dB_to_base10(p_peak + 2*g + lamda_sqdb + sigmam- for_pi_cub - k_db - te_db - b_db - nf
        -loss -snrvar)^(1/4)/1000.0;
        range2 (index) = dB_to_base10(p_peak + 2*g + lamda_sqdb + sigmadb - for_pi_cub - k_db - te_db - b_db - nf
        -loss -snrvar)^(1/4)/1000.0;
        range3(index) = dB_to_base10(p_peak + 2*g + lamda_sqdb + sigmap - for_pi_cub - k_db - te_db - b_db - nf
        -loss -snrvar)^(1/4)/1000.0;
    end
    index = 0 ;
    for snrvar = input_par*.5:1:input_par*1.5;
        
        
        
       
   
    
    