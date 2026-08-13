rg={
    rgs={
        name="fina_rg_preprod"
        location="Japan East"
    }
}

stg={
    stgs={
        storage_account_name="finaacctpreprod01"
        location="Japan East"
        resource_group_name="fina_rg_preprod"
        account_tier="Standard"
        account_replication_type="LRS"
    }
}

vnet={
    vnets={
        virtual_network_name="fina_vnet_preprod"
        resource_group_name="fina_rg_preprod"
        location="Japan East"
        address_space=["10.0.0.0/16"]
    }
}

snet={
    snets={
        subnet_name="fina_subnet_preprod"
        resource_group_name="fina_rg_preprod"
        virtual_network_name="fina_vnet_preprod"
        address_prefixes=["10.0.1.0/24"]
    }
}

pip={
    pips={
        name="fina_pip_preprod"
        resource_group_name="fina_rg_preprod"
        location="Japan East"
        allocation_method="Static"
    }
}

vms={
    vm={
        nic_name="fina_nic_preprod"
        location="Japan East"
        resource_group_name="fina_rg"
        virtual_network_name="finavnet"
        subnet_name="finasubnet"
        pip_name="fpip"
        vm_name="Ubuntu"
        size="Standard_B2ms"
        admin_username="VM01"
        admin_password="Vm@123"
    }
}
