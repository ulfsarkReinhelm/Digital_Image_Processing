%[INFO]- expands dark intensities while compressing lighter ones
%[INPUT]- an image array
%[OUTPUT]- an image array
function S = intTranLog(R)

    var_type = class(R);
    L = cast(intmax(var_type), 'double');
    c = L / log10(1+L);
    
    S = c .* log10(double( 1 + R) );
    S = cast(S, 'uint8');

end