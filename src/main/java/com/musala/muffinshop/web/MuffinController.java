package com.musala.muffinshop.web;
import com.musala.muffinshop.domain.Muffin;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/muffins")
@Controller
@RooWebScaffold(path = "muffins", formBackingObject = Muffin.class)
public class MuffinController {
}
