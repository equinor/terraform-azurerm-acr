package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestRBACExample(t *testing.T) {
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/rbac",
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)
}
