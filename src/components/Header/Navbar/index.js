import React from 'react';

import './style.scss';



const Navbar = () => (

<div class="container-fluid bg-primary text-white">
	<div class="row ">
		<div class="col-md-12 ">
			<nav class="navbar navbar-expand-lg navbar-dark">
				 
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#">
					<span class="navbar-toggler-icon"></span>
				</button> <a class="navbar-brand" href="#">Titan</a>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="navbar-nav">
                        <li class="nav-item">
							 <a class="nav-link" href="#">Ma liste</a>
						</li>
					</ul>
                    <form class="form-inline ml-md-auto">
						<input class="form-control mr-sm-2" type="text" /> 
						<button class="btn btn-light my-2 my-sm-0" type="submit">
							Search
						</button>
					</form>
				</div>
			</nav>
		</div>
	</div>
</div>
);

export default Navbar;