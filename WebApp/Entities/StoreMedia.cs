using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("store_media", Schema = "stores")]
public class StoreMedia
{
    [Key, Column("store_media_id")]
    public int StoreMediaId {get; set;}

    [Column("store_id"), Required]
    public int StoreId {get; set;}

    [Column("media_id"), Required]
    public int MediaId {get; set;}

    [Column("qty")]
    public int Qty {get; set;}

    [Column("price")]
    public int Price {get; set;}

    [Column("minimum_units")]
    public int MinimumUnits {get; set;}

    [Column("is_by_blocks")]
    public bool IsByBlocks {get; set;}
    
    [Column("is_available")]
    public bool IsAvailable {get; set;}
    public StoreEntity Store {get; set;}
    public MediaEntity Media {get; set;}
}