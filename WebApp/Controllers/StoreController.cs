using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/store")]
[ApiController]
public class StoreController : ControllerBase
{
    private readonly IStoreService storeService;

    public StoreController(IStoreService storeService)
    {
        this.storeService = storeService;
    }

    [HttpGet]
    public ActionResult GetAllStores()
    {
        List<StoreEntity> stores = storeService.GetAllStores();
        return Ok(stores);
    }

    [HttpGet, Route("format")]
    public ActionResult GetAllFormats()
    {
        List<StoreFormat> formats = storeService.GetAllFormats();
        return Ok(formats);
    }

    [HttpPost]
    public ActionResult CreateStore([FromBody] Store store)
    {
        storeService.CreateStore(store);
        return Ok();
    }

    [HttpGet]
    [Route("{id}")]
    public ActionResult GetStore(/* [FromQuery] */ int id)
    {
        StoreEntity store = storeService.GetStoreEntityById(id);

        if (store == null) {
            return NotFound($"There's no a Store whit ID {id}");
        }

        return Ok(store);
    }

    [HttpDelete]
    [Route("{id}")]
    public ActionResult DeleteStore(/* [FromQuery]  */int id)
    {
        storeService.DeleteStore(id);
        return Ok();
    }

    [HttpPut, Route("{id}")]
    public ActionResult UpdateStore(Store store, int id)
    {
        storeService.UpdateStore(store, id);
        return Ok();
    }

    [HttpPost("media")]
    public ActionResult GetStoreMedia([FromBody] int[] storeIdsArray)
    {
        List<StoreMedia> storeMedia = storeService.GetStoreMedia(storeIdsArray);
        return Ok(storeMedia);
    }
}