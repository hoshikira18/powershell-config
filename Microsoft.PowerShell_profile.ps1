oh-my-posh init pwsh | Invoke-Expression
Set-PSReadLineOption -PredictionViewStyle ListView

# Import Terminal Icons
# Import-Module -Name Terminal-Icons

# Alias
Set-Alias ll ls
Set-Alias l ls
Set-Alias c cls
Set-Alias cc cls
Set-Alias v nvim
Set-Alias p pwd
Set-Alias er exit
Set-Alias sc scoop
Set-Alias s start

# clean termial after start
c

# git add . function
function ga { git add . }

# git status function
function gs { git status }

# git commit -m 
function ggc { param([string]$msg) git commit -m "$msg" }

# git push origin 
function gpo { param([string]$branch) git push origin $branch }

function gpom { 
    git push origin main
}


# create new file function
function t {
    param (
        [string]$Path
    )
    if (!(Test-Path -Path $Path)) {
        New-Item -ItemType File -Path $Path -Force | Out-Null
          ll
    } else {
        # Update the last write time if the file exists
        (Get-Item $Path).LastWriteTime = Get-Date
          ll
    }
}

# delete file function
function d {
    param (
        [string]$Path
    )
    if (Test-Path -Path $Path) {
        Remove-Item -Path $Path -Force
        Write-Host "File '$Path' has been deleted."
    } else {
        Write-Host "File '$Path' does not exist."
    }
}

function et {
	exit
}



