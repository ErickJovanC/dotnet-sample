using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Interfaces;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/tenant")]
[ApiController]
public class TenantController : ControllerBase
{
    private readonly ITenantService tenantService;

    public TenantController(ITenantService tenantService)
    {
        this.tenantService = tenantService;
    }

    [HttpGet]
    public ActionResult GetAllTenants()
    {
        return Ok(tenantService.GetAllTenants());
    }
}