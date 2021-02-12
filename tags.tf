# This creates a tag category named "Owner".
resource "vsphere_tag_category" "tag_category_owner" {
  name        = "Owner"
  description = "Owner of the resource."
  cardinality = "MULTIPLE"

  associable_types = [
    "VirtualMachine",
    "Folder",
    "ResourcePool"
  ]
}

# This creates a tag named "cpolansky" that is under the "Owner" tag category."
resource "vsphere_tag" "tag_cpolansky" {
  name        = "cpolansky"
  category_id = vsphere_tag_category.tag_category_owner.id
  description = "Chris Polansky (cpolansky@hashicorp.com)"
}
