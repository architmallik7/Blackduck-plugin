# Set the source URL for the Synopsys Detect JAR file
$DETECT_SOURCE = "https://sig-repo.synopsys.com/artifactory/bds-integrations-release/com/synopsys/integration/synopsys-detect/9.7.0/synopsys-detect-9.7.0.jar"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path C:\opt\jar

# Download the JAR file
Invoke-WebRequest -Uri $DETECT_SOURCE -OutFile C:\opt\jar\synopsys-detect-9.7.0.jar