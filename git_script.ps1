function Get-GitStatus {
  git status
}

New-Alias -Name gs -Value Get-GitStatus -Force -Option AllScope

function Push-Gerrit {
  git push origin HEAD:refs/for/$args
}

New-Alias -Name gpor -Value Push-Gerrit -Force -Option AllScope

function Copy-GitCommit {
  git cherry-pick $args
}

New-Alias -Name gcp -Value Copy-GitCommit -Force -Option AllScope

function Get-GitPullRebase {
  git pull --rebase $args
}

New-Alias -Name gpr -Value Get-GitPullRebase -Force -Option AllScope

function Get-GitOneLineLog {
  git log --oneline --all --graph --decorate $args
}

New-Alias -Name gl -Value Get-GitOneLineLog -Force -Option AllScope

function Switch-GitBranch {
  git checkout $args
}

New-Alias -Name gco -Value Switch-GitBranch -Force -Option AllScope

function Get-GitBranch {
  git branch $args
}

New-Alias -Name gb -Value Get-GitBranch -Force -Option AllScope

function Add-GitBranch {
  git checkout -b $args
}

New-Alias -Name gcb -Value Add-GitBranch -Force -Option AllScope

function Add-GitRemoteBranch {
  git push -u $args
}

New-Alias -Name gpu -Value Add-GitRemoteBranch -Force -Option AllScope
