using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("region", Schema = "regions")]
public class RegionEntity
{
    [Key]
    [Column("region_id")]
    public int RegionId {get; set;}

    [Required, Column("name")]
    public string Name {get; set;}

    [Required, Column("description")]
    public string ? Description {get; set;}
}