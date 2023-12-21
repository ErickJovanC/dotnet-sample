using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("tenant", Schema = "tenants")]

public class Tenant
{
    [Key, Column("tenant_id")]
    public int TenantId {get; set;}
    
    [Required, Column("name")]
    public string Name {get; set;}
}