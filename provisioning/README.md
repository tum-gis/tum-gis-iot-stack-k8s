# Microsoft Azure managed Kubernetes

* [Official docs](https://azure.microsoft.com/en-us/products/kubernetes-service/)
* [Terraform]()
* [Azure VM pricing](https://azure.microsoft.com/en-us/pricing/details/virtual-machines/linux/#pricing)
* Note: VM-Sizes with less that 2 CPUs cannot be used for AKS, see [restricted SKUs](https://aka.ms/aks/restricted-skus).

```bash
terraform plan -out plan.json \
  -var resource_group_name="$cluster_name" \
  -var "contact_emails=[\"$email\"]" \
  -var k8s_default_node_type="standard_a2_v2" \
  -var k8s_default_node_count=1 \
  -var k8s_database_node_type="standard_b2s" \
  -var k8s_database_node_count=0
  -var k8s_small_node_type="standard_b2s" \
  -var k8s_small_node_count=0
```

```bash
terraform apply plan.json
```
