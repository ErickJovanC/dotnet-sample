using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("restriction_entity", Schema = "restrictions")]

public class RestrictionEntityEntity
{
    [Key, Column("restriction_id")]
    public int RestrictionId {get; set;}

    [Key, Column("entity_id")]
    public int EntityId {get; set;}

    public RestrictionEntity RestrictionEntity {get; set;}
}