package controller;

/**
 * Created by jurandir on 11/02/16.
 */

import com.fasterxml.jackson.annotation.JsonView;
import model.usuario.Usuario;
import modelview.UsuarioVO;
import modelview.Views;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import java.util.List;

@Controller
public class MainController {

    static UserService service = new UserService();

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(ModelMap model) {
        model.addAttribute("result", "");
        return new ModelAndView("login", "userForm", new UsuarioVO());

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView indexLogin(ModelMap model) {
        model.addAttribute("result", "");
        return new ModelAndView("login", "userForm", new UsuarioVO());

    }


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("userForm") UsuarioVO user, Model model) {
        System.out.println("_login: " + user.getLogin());
        System.out.println("_senha: " + user.getSenha());

        if(service.userExists(user.getLogin(),user.getSenha())){
            List<Usuario> lista = service.findAll();
            model.addAttribute("usuarios", lista);
            return "list";
        }
        model.addAttribute("result", "Usuário não encontrado");
        return "login";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(ModelMap model) {

        return "create";
    }

    @JsonView(Views.Public.class)
    @RequestMapping(value = "/createAjax" ,method = RequestMethod.POST)
    public @ResponseBody UsuarioVO getSearchResultViaAjax(@RequestBody UsuarioVO dados) {

        service.createUser(dados.getLogin(),dados.getSenha(),dados.getSexo(), dados.getCandidato());
        return dados;

    }

//    @RequestMapping(value = "/test/{name:.+}", method = RequestMethod.GET)
//    public ModelAndView test(@PathVariable("name") String name) {
//
//        ModelAndView model = new ModelAndView();
//        model.setViewName("test");
//        model.addObject("msg", name);
//
//        return model;
//
//    }

}
