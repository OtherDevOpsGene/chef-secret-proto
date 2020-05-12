# chef-secret-proto

TODO: Enter the cookbook description here.

The `microsoft_azure` cookbook requires:

```sh
chef exec gem install azure
```

$cert = New-SelfSignedCertificate -DnsName ggotimer.coveros.com -CertStoreLocation "cert:\LocalMachine\My" -KeyLength 2048 -KeySpec "KeyExchange"
Export-Certificate -Type CERT -Cert $cert -FilePath .\ggotimer-coveros-com.cer
openssl x509 -in ggotimer-coveros-com.cer -out ggotimer-coveros-com.pem -outform PEM

Portal > Subscriptions > Pay-As-You-Go > Management certificates + Upload

DataBag recommendation:

% knife data bag create microsoft_azure
% knife data bag from file microsoft_azure cookbooks/chef-secret-proto/microsoft_azure.json
{
  "id": "main",
  "management_certificate": "-----BEGIN CERTIFICATE-----
MIIDOTCCAiGgAwIBAgIQP5KGHJooRbdFj+0p7hOyiTANBgkqhkiG9w0BAQUFADAf
MR0wGwYDVQQDDBRnZ290aW1lci5jb3Zlcm9zLmNvbTAeFw0yMDA1MTIxODM2MjZa
Fw0yMTA1MTIxODU2MjZaMB8xHTAbBgNVBAMMFGdnb3RpbWVyLmNvdmVyb3MuY29t
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtvp6FgGFjUcdmWNjgYbF
e3oTF9aSsmF9Jd6Ng7i30r3RBXEr/Hz5nwa24KXD2RUpbyhrsQ1VoIWEyQ+2695E
vORyLg2utzyh+LTHPqO2DpeBmefUdJYIZTP5wTLeW/Udp8HD//cCBZf13LaFF+v3
yRw8fQ+TvPapB/9ZfiqMKND4098jQ7mB8Dw51XFquG9HQeyaD+sPxMte1YgHcV1a
QHePP7tQhPBXi0MZVWPVLvSBkxvyseuWbYtHNsjgt5646Sgy935wxWlF4+/RBAPJ
QaLPxXhBNM6K3yWOWNsm1aFmHT97oD+1e3Mgg8sTIYIruAHS/H9SG0CczS8ZAaiv
lQIDAQABo3EwbzAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIG
CCsGAQUFBwMBMB8GA1UdEQQYMBaCFGdnb3RpbWVyLmNvdmVyb3MuY29tMB0GA1Ud
DgQWBBRfaNvjUzaYRJo8oDGZ1UDOtF5jNTANBgkqhkiG9w0BAQUFAAOCAQEABuKL
z7ngAmPmW+puOFeHmxxya+UTovFLpM0ihDtQYz/ez17myvCSZKmbsJJuDeHg0dnF
dXDnCs/22oSyYxtnb8vhTFUEtHt/PlQ3Fg7xHi48qEofD2hr+O0bhSgh6/qgYCpe
irlvnxW3yFp4sFHXeGc/nmBnLAZtlRLycUMnFeNSJHfF4pYBaiIIHjGdPNedio9K
JkEBdateaAcFEaDwMuEmW5tkrJp9GCnEj0ui4w0V0drGG7qeOqju44L59LNflZ3J
du8q01Xl+RX2arjY3kq8f+uvhau8FwAmfgYKICxC4NXL33TMthQHG711nCK7u0hX
ZdtXuITCFk2ufVaN0A==
-----END CERTIFICATE-----
",
  "subscription_id": "75fe9f98-9fc2-4869-9e65-e9d458f71f6f"
}
This can be loaded in a recipe with:

microsoft_azure = data_bag_item("microsoft_azure", "main")
And to access the values:

microsoft_azure['management_certificate']
microsoft_azure['subscription_id']


