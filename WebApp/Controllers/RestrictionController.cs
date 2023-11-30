using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;
using DotNetLocalDb.WebApp.Data;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/[controller]")]
[ApiController]
public class RestrictionController : ControllerBase
{
    private readonly IRestrictionService restrictionService;
    private readonly DataDbContext context;

    public RestrictionController(IRestrictionService restrictionService)
    {
        this.restrictionService = restrictionService;
        this.context = context;
    }

    [HttpGet]
    public ActionResult Index()
    {
        List<Restriction> restrictions = restrictionService.GetAllRestrictions();
        return Ok(restrictions);
    }

    [HttpPost]
    public ActionResult CreateRestriction([FromBody] RestrictionDTO restrictionDTO)
    {
        // var existRestriction = context.Entity.Any(x => x.EntityId == restriction.EntityId);

        // System.Console.WriteLine(existRestriction);

        // if (!existRestriction)
        // {
        //     return BadRequest($"No existe ninguna Entidad con el ID: {restriction.EntityId}");
        // }
        // System.Console.WriteLine("Si existe la Restricción");

        restrictionService.CreateRestriction(restrictionDTO);
        return Ok();
    }

    [HttpPost, Route("Entity")]
    public ActionResult AddEntity([FromBody] RestrictionEntityDTO restrictionEntityDTO)
    {
        restrictionService.AddEntity(restrictionEntityDTO);
        return Ok();
    }
}