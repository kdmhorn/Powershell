Function Get-CsvFromDialog{
## Gets a CSV from Windows Dialog
    Add-Type -AssemblyName System.Windows.Forms
    $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{
        Title = 'Select input file for processing'
        Multiselect = $False
        Filter = 'CSV Files (*.csv)|*.csv|Text Files (*.txt)|*.txt|All Files (*.*)|*.*'} # Specified file types

    [void]$FileBrowser.ShowDialog()

    $FileBrowser.FileName

} #End Function