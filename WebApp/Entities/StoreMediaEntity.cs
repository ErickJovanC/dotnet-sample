using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

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
    
    [Column("is_active")]
    public int IsActive {get; set;}
    // public List<StoreEntity> Stores {get; set;}
    // public List<MediaEntity> Media {get; set;}
}