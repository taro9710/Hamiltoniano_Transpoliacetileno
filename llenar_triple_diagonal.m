function H = llenar_triple_diagonal(H,i,v,w,pared)
    if rem(i+pared,2) == 0
        H(i,i+1) = w;
        H(i+1,i) = w;
    else
        H(i,i+1) = v;
        H(i+1,i) = v;
    end
end
