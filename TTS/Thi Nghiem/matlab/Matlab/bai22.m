funcion [out_char] = rdar_eq(pt,freq,g,sigma,te,b,nf,loss,input_char,option,rcs_delta1,rcs_delta2,pt_percent1,pt_percent2);
c = 3.0e+8;
lambda = c/freq;
p_peak = base10_to_dB(pt);
lambda_sq = lambda^2;
lambda_sqdb = base10_to_dB(sigma);
for_pi_cub = base10_to_dB((4.0*pi)^3);
k_db = base10_to_dB(1.38e-23);
te_db = base10_to_dB(te);
b_db = base10_to_dB(b);
if(option==1)
    temp = p_peak+2*g + lambda_sqdb + sigmadb - for_pi_cub - k_db - te_db -b_db - nf - loss - input_par;
    out_par = dB_to_base10(temp)^(1/4);
end