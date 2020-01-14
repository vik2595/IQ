$instancename = Read-Host 'Enter GCE Instance Name'
$GCEProject = Read-Host 'Enter Porject Name'
$GCEZone = Read-Host 'Enter GCE Zone'
$GCEScript = Read-Host 'Enter location on script (path for svrInfo.ps1 file)'

gcloud beta compute --project=$GCEProject instances create $instancename --zone=$GCEZone --machine-type=n1-standard-1 --subnet=default --network-tier=PREMIUM --maintenance-policy=MIGRATE --service-account=425425884307-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --image=windows-server-2012-r2-dc-v20191210 --image-project=windows-cloud --boot-disk-size=50GB --boot-disk-type=pd-standard --boot-disk-device-name=test2 --reservation-affinity=any