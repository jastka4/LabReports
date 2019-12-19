@Controller
public class HomeController {

    @Resource
    private ItemRepository itemRepository;

    @GetMapping(value = "/")
    public ModelAndView hello() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("items", itemRepository.findAll());
        modelAndView.setViewName("productListingPage");
        return modelAndView;
    }

    @GetMapping("/privacyPolicy")
    public ModelAndView getPrivacyPolicy() {
        return new ModelAndView("privacyPolicy");
    }
}