using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/[controller]")]
[ApiController]
public class RestrictionController : ControllerBase
{
    private readonly IRestrictionService restrictionService;

    public RestrictionController(IRestrictionService restrictionService)
    {
        this.restrictionService = restrictionService;
    }

    [HttpPost]
    public ActionResult CreateRestriction([FromBody] Restriction restriction)
    {
        restrictionService.CreateRestriction(restriction);
        return Ok();
    }
}