# Defined interactively
function pf --wraps=kubectl
kubectl port-forward -n $argv[1] $argv[2] 8081:8080 
end
