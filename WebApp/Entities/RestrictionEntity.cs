using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("restriction", Schema = "restrictions")]

public class RestrictionEntity
{
    [Key, Column("restriction_id")]
    public int RestrictionId {get; set;}

    [Column("date_start")]
    public DateTime ? DateStart {get; set;}

    [Column("date_end")]
    public DateTime ? DateEnd {get; set;}

    public List<RestrictionEntityEntity> RestrictionEntityEntity {get; set;}
}