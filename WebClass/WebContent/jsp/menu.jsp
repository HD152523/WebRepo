
<%@ page language="java" pageEncoding="UTF-8"%>
<ul class="navbar-nav mr-auto">
    <li class="nav-item active" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="a.html">메뉴1<span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="p.html">메뉴2</a>
    </li>
    <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="#">메뉴3</a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu" aria-labelledby="dropdown07">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <a class="dropdown-item" href="#">Something else here</a>
        </div>
    </li>
</ul>