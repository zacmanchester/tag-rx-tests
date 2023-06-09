function cor = xcnorm(signal,bbTemplate)

%Normalized cross-correlation

n = length(bbTemplate)-1;
steps = length(signal)-n;
cor = complex(zeros(steps, 1));

for k = 1:steps
    cor(k) = ((bbTemplate)/norm(bbTemplate))'*(signal(k:k+n)/norm(signal(k:k+n)));
end

end

