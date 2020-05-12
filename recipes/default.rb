#
# Cookbook:: chef-secret-proto
# Recipe:: default
#
# Copyright:: 2020, Coveros, Inc., All Rights Reserved.

include_recipe 'microsoft_azure'
#microsoft_azure = data_bag_item('microsoft_azure', 'main')

# tenant_id: Portal > Tenant Properties > Directory ID
# client_id: Portal > Azure Active Directory > App registrations + Create > Application (client) ID
# secret: Portal > Azure Active Directory > App registrations > application > Certificates & secrets + New client secret  
spn = {
  'tenant_id' => 'af7b34fc-1b3a-4768-8a66-37ad181279cf',
  'client_id' => 'be6e499d-8204-40f6-a515-bb70ded68993',
  'secret' => 'vAgsgBBhBO/.eL/ks@f5803TTVdgerWg',
}

# vault: Portal > Key vaults + Add
# secret: Portal > Key vaults > vault > Secrets + Generate/import
# Portal > Azure Active Directory > App registrations > application > API permissions + Add a permission > Azure Key Vault
# Portal > Azure Active Directory > App registrations > application > Authentication > Treat application as a public client.
# Portal > Key vaults > vault > Access policies + Add access Policy: Configure from Secrets Management Select principal > application > select > Add > Save 
super_secret = vault_secret('password-one', 'secret-the-first', spn)

log 'Azure Secret' do
  message "password = #{super_secret}"
  level :error
end
