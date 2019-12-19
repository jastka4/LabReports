@Controller
@RequestMapping("/product")
public class ProductController {

    @Resource
    private ItemService itemService;

    @GetMapping(params = {"id"})
    public ModelAndView showProduct(@RequestParam(value = "id") long itemId) {
        ModelAndView modelAndView = new ModelAndView();
        Item item = itemService.findItemById(itemId);
        modelAndView.addObject("product", item);
        modelAndView.setViewName("productDisplayPage");
        return modelAndView;
    }
}