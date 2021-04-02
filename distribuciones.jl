using Pkg
Pkg.status()
#Distribucion_Binomial
#Todo lo relacionado con la distribucion binomila va acá
function binom(n,p)
    q=(1-p)
    
    media=n*p
    
    varianza=n*p*q
    
    teta= (q-p)/((n*q*p)^0.5)
    
#    curtosis=n
    return q,media,varianza,teta
end
#funcion generadora de momentos
function mometobinomt(n,p,t)
    q=(1 - p)
    
    m=(q + p*(ℯ^t))^n
    
    return m
end
function binomcurtosis(n,p) 
    q=(1 - p)
    
    tet= (q - p)/((n*q*p)^0.5)
    
    c=(q + p*(ℯ^tet))^n
    
    return c
end
