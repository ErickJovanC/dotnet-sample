using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.DTOs;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/restriction")]
[ApiController]
public class RestrictionController : ControllerBase
{
    private readonly IRestrictionService restrictionService;

    public RestrictionController(IRestrictionService restrictionService)
    {
        this.restrictionService = restrictionService;
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
        restrictionService.CreateRestriction(restrictionDTO);
        return Ok();
    }

    [HttpPost, Route("Entity")]
    public ActionResult AddEntity([FromBody] RestrictionEntityDTO restrictionEntityDTO)
    {
        restrictionService.AddEntity(restrictionEntityDTO);
        return Ok();
    }

    [HttpPost("validate")]
    public ActionResult validate([FromBody] int[] entitiesIds)
    {
        bool restrictions = restrictionService.Validate(entitiesIds);
        return Ok(restrictions);
    }
}