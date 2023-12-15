using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("store_media", Schema = "stores")]
public class StoreMediaEntity
{
    [Key, Column("store_media_id")]
    public int StoreMediaId {get; set;}

    [Column("store_id")]
    public int StoreId {get; set;}

    [Column("media_id")]
    public int MediaId {get; set;}

    [Column("qty")]
    public int Qty {get; set;}

    [Column("is_by_blocks")]
    public bool IsByBlocks {get; set;}
    
    [Column("is_available")]
    public bool IsAvailable {get; set;}
    // public List<StoreEntity> Stores {get; set;}
    // public List<MediaEntity> Media {get; set;}
}