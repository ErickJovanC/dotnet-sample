using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/[controller]")]
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

    // [HttpPost, Route("media")]
    // public ActionResult GetStoreByMediaIds(int[] mediaIds)
    // {
    //     if (mediaIds == null || mediaIds.Length == 0)
    //     {
    //         return BadRequest("Debe proporcionar al menos un ID de MediaStore");
    //     }

    //     List<StoreEntity> media = storeService.GetStoresByMediaIds(mediaIds);
    //     return Ok(media);
    // }
}