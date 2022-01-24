function Get-Kubectl {
  kubectl $args
}

New-Alias -Name kb -Value Get-Kubectl -Force -Option AllScope

function Get-K8sNodes {
  kubectl get nodes -o wide $args
}

New-Alias -Name kbgn -Value Get-K8sNodes -Force -Option AllScope

function Get-K8sPods {
  kubectl get pods -o wide $args
}

New-Alias -Name kbgp -Value Get-K8sPods -Force -Option AllScope

function Get-K8sDeployments {
  kubectl get deployments -o wide $args
}

New-Alias -Name kbgd -Value Get-K8sDeployments -Force -Option AllScope

function Get-K8sService {
  kubectl get services -o wide $args
}

New-Alias -Name kbgs -Value Get-K8sService -Force -Option AllScope

function Get-K8sResouceDetails {
  kubectl describe $args
}

New-Alias -Name kbd -Value Get-K8sResouceDetails -Force -Option AllScope

function Add-K8sResouce {
  kubectl apply -f $args
}

New-Alias -Name kbaf -Value Add-K8sResouce -Force -Option AllScope

function Remove-K8sResouce {
  kubectl delete -f $args
}

New-Alias -Name kbdf -Value Remove-K8sResouce -Force -Option AllScope
