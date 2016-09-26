function [ ] = noise_filter( input, output )
%NOISE_FILTER �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

[in, fs] = audioread(input);
[samples, channels] = size(in);
load('denoise_filter_coef.mat');
for i = 1:channels
   in(:,i) = filter(Num, 1, in(:, i));  
end

audiowrite(output, in, fs, 'BitsPerSample', 16);

end

