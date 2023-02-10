package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestGeoReplicationExample(t *testing.T) {
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/geo-replication",
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)
}
