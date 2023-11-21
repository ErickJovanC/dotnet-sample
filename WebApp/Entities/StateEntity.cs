using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

public class StateEntity
{
    [Key]
    [Column("state_id")]
    public int StateId {get; set;}

    [Required, Column("name")]
    public string? Name {get; set;}
}