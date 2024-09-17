$DETECT_SOURCE = "https://sig-repo.synopsys.com/artifactory/bds-integrations-release/com/synopsys/integration/synopsys-detect/9.7.0/synopsys-detect-9.7.0.jar"
$DESTINATION_PATH = "C:\opt\jar\synopsys-detect-9.7.0.jar"

# Log message indicating the start of the script
Write-Host "Starting the download process for Synopsys Detect."

# Create the directory if it doesn't exist
if (-Not (Test-Path "C:\opt\jar")) {
    Write-Host "Creating directory C:\opt\jar"
    New-Item -ItemType Directory -Path "C:\opt\jar" -Force
} else {
    Write-Host "Directory C:\opt\jar already exists."
}

# Check if the file already exists
if (-Not (Test-Path $DESTINATION_PATH)) {
    Write-Host "Downloading Synopsys Detect JAR from $DETECT_SOURCE to $DESTINATION_PATH"
    try {
        Invoke-WebRequest -Uri $DETECT_SOURCE -OutFile $DESTINATION_PATH -UseBasicParsing
        Write-Host "Download complete."
    } catch {
        Write-Error "Failed to download Synopsys Detect JAR. Error: $_"
        exit 1
    }
} else {
    Write-Host "Synopsys Detect JAR already exists at $DESTINATION_PATH. Skipping download."
}
