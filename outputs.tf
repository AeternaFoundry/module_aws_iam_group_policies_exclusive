output "iam_group_policies_exclusives_group_name" {
  description = "Map of group_name values across all iam_group_policies_exclusives, keyed the same as var.iam_group_policies_exclusives"
  value       = { for k, v in aws_iam_group_policies_exclusive.iam_group_policies_exclusives : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "iam_group_policies_exclusives_policy_names" {
  description = "Map of policy_names values across all iam_group_policies_exclusives, keyed the same as var.iam_group_policies_exclusives"
  value       = { for k, v in aws_iam_group_policies_exclusive.iam_group_policies_exclusives : k => v.policy_names if v.policy_names != null && length(v.policy_names) > 0 }
}

