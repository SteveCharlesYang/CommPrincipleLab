function [  ] = plot_db( ts, y )
%PLOT_DB 此处显示有关此函数的摘要
%   此处显示详细说明
plot(ts,20.*log10(abs(y)/max(abs(y))));

end

