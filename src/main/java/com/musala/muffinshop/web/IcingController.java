package com.musala.muffinshop.web;
import com.musala.muffinshop.domain.Icing;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/icings")
@Controller
@RooWebScaffold(path = "icings", formBackingObject = Icing.class)
public class IcingController {
}
