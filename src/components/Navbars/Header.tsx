"use client";
import React, { useMemo, useState, useTransition, Fragment } from "react";
import { usePathname, useRouter } from "next/navigation";
import Link from "next/link";
import { useCart } from "react-use-cart";
import { useAppDispatch, useAppSelector } from "../hooks";
import Drawer from "rc-drawer";
import { useCustomer } from "../lib/woocommerce";
import { currencyOptions, filterCustomersByEmail } from "@constants";
import { getFirstCharacter, signOut } from "@utils/lib";
import { LogoImage } from "@utils/function";
import Picture from "../picture/Picture";
import { APICall } from "@utils";
import { fetchExchangeRate } from "@utils/endpoints";
import { setBaseCurrency, setExchangeRate } from "../Redux/Currency";
import FormToast from "../Reusables/Toast/SigninToast";
import useToken from "../hooks/useToken";

// Headless UI Components
import { Menu, Transition } from "@headlessui/react";
import {
  FiSearch,
  FiShoppingBag,
  FiUser,
  FiLogOut,
  FiMenu,
  FiSettings,
  FiShoppingCart,
} from "react-icons/fi";
import { SlArrowDown, SlClose } from "react-icons/sl";
import Flag from "react-world-flags";
import GlobalLoader from "../modal/GlobalLoader";
import MobileNav from "./MobileNav";
import ProductTable from "../Tables/ProductTable";
import CategoryPageBottomHeader from "./CategoryPageBottomHeader";
import ProductPageBottomHeader from "./ProductPageBottomHeader";
import HomePageBottomHeader from "./HomePageBottomHeader";
import { FaCartArrowDown } from "@node_modules/react-icons/fa";
import { BiUser } from "@node_modules/react-icons/bi";
import { ImSpinner2 } from "@node_modules/react-icons/im";
import { MdOutlinePerson2 } from "@node_modules/react-icons/md";
import { LuSearch } from "react-icons/lu";

const Header = () => {
  const pathname = usePathname();
  const router = useRouter();
  const dispatch = useAppDispatch();
  const { email } = useToken();
  const { totalItems } = useCart();

  const { baseCurrency } = useAppSelector((state) => state.currency);
  const [isPending, startTransition] = useTransition();
  const [showsearch, setShowSearch] = useState(false);

  const [isCartOpen, setIsCartOpen] = useState(false);
  const [drawerVisible, setDrawerVisible] = useState(false);
  const [searchValue, setSearchValue] = useState("");

  const { data: customer } = useCustomer("");
  const wc_customer_info = useMemo(
    () => filterCustomersByEmail(customer as Woo_Customer_Type[], email),
    [customer, email],
  );

  const onOpenCart = () => setIsCartOpen(true);
  const onCloseCart = () => setIsCartOpen(false);

  const handleCurrencyChange = async (code: string) => {
    const selectedObj = currencyOptions.find((c) => c.code === code);
    if (!selectedObj) return;

    try {
      const data = await APICall(fetchExchangeRate, ["NGN", code], true, true);
      if (data) {
        dispatch(setExchangeRate(data));
        dispatch(setBaseCurrency(selectedObj));
        FormToast({ message: `Switched to ${code}`, success: true });
      }
    } catch (error) {
      FormToast({ message: "Currency switch failed", success: false });
    }
  };

  const handleSearch = () => {
    if (!searchValue) return;

    startTransition(() => {
      router.push(`/search?${searchValue}`);
    });
  };

  const showSearchField = () => {
    setShowSearch((prev) => !prev);
  };

  const userDropDownLinks = [
    {
      id: 1,
      href: "/user/dashboard",
      icon: <BiUser />,
      label: "My Account",
    },
    {
      id: 2,
      href: "/user/my-orders",
      icon: <FaCartArrowDown />,
      label: "Orders",
    },
    { id: 3, onClick: onOpenCart, icon: <FiShoppingCart />, label: "Cart" },
  ];

  return (
    <>
      <header className="flex flex-col w-full bg-[#fff] z-[100] fixed top-0 border-b border-white/5 shadow-2xl transition-all">
        {/* Desktop Header */}
        <div className="hidden slg:grid grid-cols-3 items-center justify-stretch w-full py-3 max-w-[1350px] mx-auto">
          {/* 1. Logo */}
          <div className="col-span-1 flex items-center gap-20 ">
            <div className=" ">
              <LogoImage className='!w-[100px] cursor-pointer brightness-200' />
            </div>
          </div>

          <div className="col-span-1 flex justify-center">
            <HomePageBottomHeader />
          </div>

          {/* <div className="col-span-1 flex justify-center ">
            
          

          {/* 3. Controls */}
          <div className="col-span-1 flex items-center justify-end gap-6">
            <div
              onClick={showSearchField}
              className="relative inline-block text-left cursor-pointer"
            >
              {showsearch ? <SlClose size={25} /> : <LuSearch size={25} />}
            </div>
            {/* STABLE CURRENCY DROPDOWN */}
            <Menu as="div" className="relative inline-block text-left">
              {({ open }) => (
                <>
                  <Menu.Button className="flex items-center gap-2 bg-[#fff] border border-white/10 px-3 py-2 rounded-xl cursor-pointer hover:bg-white/5 transition group outline-none">
                    {/* @ts-ignore */}
                    <Flag
                      code={baseCurrency?.countryCode || "NG"}
                      className="w-4 rounded-sm"
                    />
                    <span className="text-xs font-bold text-gray-700 uppercase">
                      {baseCurrency.code}
                    </span>
                    <SlArrowDown
                      className={`text-[8px] text-gray-900 transition-transform duration-200 ${open ? "rotate-180" : ""}`}
                    />
                  </Menu.Button>

                  <Transition
                    as={Fragment}
                    enter="transition ease-out duration-100"
                    enterFrom="transform opacity-0 scale-95"
                    enterTo="transform opacity-100 scale-100"
                    leave="transition ease-in duration-75"
                    leaveFrom="transform opacity-100 scale-100"
                    leaveTo="transform opacity-0 scale-95"
                  >
                    <Menu.Items className="absolute right-0 mt-2 w-36 origin-top-right bg-[#111111] border border-white/10 rounded-2xl shadow-2xl p-1 z-[110] outline-none">
                      {currencyOptions.map((c) => (
                        <Menu.Item key={c.code}>
                          {({ active }) => (
                            <button
                              onClick={() => handleCurrencyChange(c.code)}
                              className={`${
                                active
                                  ? "bg-white/5 text-white"
                                  : "text-gray-500"
                              } flex w-full items-center gap-2 rounded-xl px-3 py-2.5 text-xs font-medium transition-colors`}
                            >
                              {/* @ts-ignore */}
                              <Flag
                                code={c.countryCode}
                                className="w-4 text-black"
                              />
                              {c.code} ({c.symbol})
                            </button>
                          )}
                        </Menu.Item>
                      ))}
                    </Menu.Items>
                  </Transition>
                </>
              )}
            </Menu>

            {/* Cart */}
            <div className="relative cursor-pointer group" onClick={onOpenCart}>
              <FiShoppingBag className="text-2xl text-gray-600 group-hover:text-[#4c16c7] transition" />
              {totalItems > 0 && (
                <span className="absolute -top-1.5 -right-1.5 size-5 bg-[#4c16c7] text-white text-[10px] font-black flex items-center justify-center rounded-full border-2 border-black">
                  {totalItems}
                </span>
              )}
            </div>

            {/* STABLE USER DROPDOWN */}
            <Menu as="div" className="relative inline-block text-left">
              {({ open }) => (
                <>
                  <Menu.Button className="flex items-center gap-2 cursor-pointer group outline-none focus:ring-0">
                    {wc_customer_info?.shipping?.address_2 ? (
                      <div className="size-9 rounded-full border border-white/10">
                        {getFirstCharacter(wc_customer_info?.first_name || "U")}
                      </div>
                    ) : (
                      <div className="size-9 rounded-full bg-gray-200 text-white flex items-center justify-center font-black text-xs">
                        <MdOutlinePerson2 size="25px" color="black" />
                      </div>
                    )}
                    <SlArrowDown
                      className={`text-[10px] text-gray-400 transition-transform duration-200 ${open ? "rotate-180" : ""}`}
                    />
                  </Menu.Button>

                  <Transition
                    as={Fragment}
                    enter="transition ease-out duration-100"
                    enterFrom="transform opacity-0 scale-95"
                    enterTo="transform opacity-100 scale-100"
                    leave="transition ease-in duration-75"
                    leaveFrom="transform opacity-100 scale-100"
                    leaveTo="transform opacity-0 scale-95"
                  >
                    <Menu.Items className="absolute right-0 mt-2 w-52 origin-top-right bg-[#111111] border border-white/10 rounded-2xl shadow-2xl p-1.5 z-[110] outline-none">
                      <div className="px-3 py-2 mb-1 border-b border-white/5">
                        <p className="text-xs text-gray-500">Logged in as</p>
                        <p className="text-sm font-bold text-white truncate">
                          {wc_customer_info?.first_name}
                        </p>
                      </div>

                      <div className="flex flex-col gap-0.5">
                        {userDropDownLinks.map((item) => (
                          <Menu.Item key={item.id}>
                            {({ active }) => (
                              <button
                                onClick={(e) => {
                                  if (item.onClick) {
                                    e.preventDefault();
                                    item.onClick();
                                  } else if (item.href) {
                                    router.push(item.href);
                                  }
                                }}
                                className={`${
                                  active
                                    ? "bg-white/5 text-white"
                                    : "text-gray-300"
                                } flex w-full items-center gap-3 rounded-xl px-3 py-3 text-sm transition-colors`}
                              >
                                <span className="text-lg">{item.icon}</span>
                                {item.label}
                              </button>
                            )}
                          </Menu.Item>
                        ))}
                      </div>

                      <Menu.Item>
                        {({ active }) => (
                          <button
                            onClick={() => signOut()}
                            className={`${
                              active ? "bg-red-500/10" : ""
                            } flex w-full items-center gap-3 rounded-xl px-3 py-3 text-sm text-red-500 font-bold transition-colors mt-1`}
                          >
                            <FiLogOut /> Log Out
                          </button>
                        )}
                      </Menu.Item>
                    </Menu.Items>
                  </Transition>
                </>
              )}
            </Menu>
          </div>
        </div>

        {showsearch && (
          <div className="w-full flex item-center justify-center pb-5 mt-[-10px]">
            <div className="relative w-full max-w-[550px] group">
              <FiSearch className="absolute left-4 top-1/2 -translate-y-1/2 text-gray-500 group-focus-within:text-[#4c16c7] transition-colors" />
              <input
                type="text"
                placeholder="Search hardware, accessories..."
                className="w-full h-11 text-sm text-gray-600 rounded-full pl-12 pr-5 border border-white/8 outline-none focus:border-blue-500/50 transition bg-[#fff]"
                onChange={(e) => setSearchValue(e.target.value)}
                onKeyDown={(e) => e.key === "Enter" && handleSearch()}
              />
            </div>
          </div>
        )}

        {/* Mobile Header (Hidden on Laptop) */}
        <div className="slg:hidden flex flex-col w-full p-4 gap-3 bg-gray-300">
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-4">
              <FiMenu
                className="text-2xl text-black"
                onClick={() => setDrawerVisible(true)}
              />
              <LogoImage className="!w-[100px] brightness-200" />
            </div>
            <div onClick={onOpenCart} className="relative">
              <FiShoppingBag className="text-2xl text-black" />
              {totalItems > 0 && (
                <span className="absolute -top-2 -right-2 size-4 bg-blue-600 rounded-full text-[9px] flex items-center justify-center text-white">
                  {totalItems}
                </span>
              )}
            </div>
          </div>
          <div className="relative h-10">
            <input
              type="text"
              placeholder="Search items..."
              className="w-full h-full text-sm bg-gray-100 rounded-lg px-4 border-none outline-none focus:ring-2 focus:ring-primary-100"
              value={searchValue}
              onChange={(e) => setSearchValue(e.target.value)}
              onKeyDown={(e) => e.key === "Enter" && handleSearch()}
            />
            {isPending ? (
              <ImSpinner2 className="absolute right-3 top-1/3 text-primary-100 animate-spin" />
            ) : (
              <FiSearch className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400" />
            )}
          </div>
        </div>
      </header>

      <Drawer
        open={isCartOpen}
        onClose={onCloseCart}
        placement="right"
        width={
          typeof window !== "undefined" && window.innerWidth > 768
            ? 500
            : "100%"
        }
      >
        <ProductTable onClose={onCloseCart} />
      </Drawer>

      <GlobalLoader isPending={isPending} />
      <MobileNav
        closeDrawer={() => setDrawerVisible(false)}
        drawerVisible={drawerVisible}
      />
    </>
  );
};

export default Header;
