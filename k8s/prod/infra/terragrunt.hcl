terraform {
  source = "git::git@github.com:supernacho/tfm.git//karbon-cluster"
}

include {
  path = find_in_parent_folders()
}
