using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("entity", Schema = "Entities")]

public class EntityEntity
{
    [Key, Column("entity_id")]
    public int EntityId {get; set;}

    [Column("entity_type_id")]
    public int EntityTypeId {get; set;}

    [Column("entity_name")]
    public string ? EntityName {get; set;}
}