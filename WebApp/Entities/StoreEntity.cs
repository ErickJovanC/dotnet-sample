using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

public class StoreEntity
{
    [Key]
    [Column("store_id")]
    public int StoreId {get; set;}

    [Required, Column("store_format_id")]
    public int StoreFormatId {get; set;}

    [Column("region_id")]
    public int RegionId {get; set;}

    [Required, Column("state_id")]
    public int StateId {get; set;}

    [Required, Column("name")]
    public string? Name {get; set;}
    public string? Location {get; set;}

    // public List<StoreMediaEntity> StoreMedia {get; set;}
}