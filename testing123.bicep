targetScope = 'subscription'
param environmentTag string
param locationTag string
param seqInfoTags object
param location string

resource seqResourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'cv-rg-seq-${toLower(environmentTag)}-${locationTag}'
  tags: seqInfoTags
  location: location
}
