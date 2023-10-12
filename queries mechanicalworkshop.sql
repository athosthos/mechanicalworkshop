select v.modelVehicule, c.descriptionComponent from vehicule v, vehiculemechanical vm, mechanical m, works_on w, serviceorder so, tasks t, service s, componentservice cs, components c
where v.licensePlate = vm.licensePlate and vm.idMechanical = m.idMechanical and m.idMechanical = w.idMechanical and w.idServiceOrder = so.idServiceOrder and so.idServiceOrder = t.idServiceOrder
and t.service = s.service and s.service = cs.service and cs.descriptionComponent = c.descriptionComponent;

select v.modelVehicule, sum(c.price + s.price) as price from vehicule v, vehiculemechanical vm, mechanical m, works_on w, serviceorder so, tasks t, service s, componentservice cs, components c
where v.licensePlate = vm.licensePlate and vm.idMechanical = m.idMechanical and m.idMechanical = w.idMechanical and w.idServiceOrder = so.idServiceOrder and so.idServiceOrder = t.idServiceOrder
and t.service = s.service and s.service = cs.service and cs.descriptionComponent = c.descriptionComponent group by idserviceorder having price > 150.00;