using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;

namespace DotNetLocalDb.WebApp.Controllers;

[ApiController]
public class LocationController : ControllerBase
{
    private readonly ILocationService locationService;

    public LocationController(ILocationService locationService)
    {
        this.locationService = locationService;
    }

    [HttpGet, Route("api/States")]
    public ActionResult GetAllStates()
    {
        List<StateEntity> locations = locationService.GetAllStates();
        return Ok(locations);
    }

    [HttpGet, Route("api/State/{id}")]
    public ActionResult GetState(int id)
    {
        StateEntity location = locationService.GetStateEntityById(id);

        if (location == null) {
            return NotFound($"There's no a State whit ID {id}");
        }

        return Ok(location);
    }
}