$Packages = Get-Content .\installpackage.txt
mkdir "D:\Program\chocoinstall"
ForEach ($PackageName in $Packages)
{
    # echo $PackageName
    choco install $PackageName -y --% -ia INSTALLDIR="D:\Program\chocoinstall"
}