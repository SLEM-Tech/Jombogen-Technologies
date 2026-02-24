"use client";
import React, { useEffect, useRef, useState } from "react";

import Picture from "../picture/Picture";
import { useCategories, WooCommerce } from "../lib/woocommerce";
import ProductCard from "../Cards/ProductCard";
import HomeCard from "../Cards/HomeCard";
import Carousel from "../Reusables/Carousel";
import Link from "next/link";
import { convertToSlug, convertToSlug2 } from "@constants";
import { useEncryptionHelper } from "../EncryptedData";
import { useDispatch } from "react-redux";
import { updateCategorySlugId } from "../config/features/subCategoryId";
import { useRouter } from "next/navigation";
import { heroBg } from "@public/images";
import HeroCarousel from "../Cards/HeroCarousel";
import Image from "next/image";

const AllCategorySection = () => {
  const sliderRef = useRef<HTMLDivElement>(null);
  const [maxScrollTotal, setMaxScrollTotal] = useState(0);
  const [scrollLeftTotal, setScrollLeftTotal] = useState(0);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const dispatch = useDispatch();
  const router = useRouter();

  // State to hold products by category
  const [categoryProductsMap, setCategoryProductsMap] = useState<{
    [key: string]: ProductType[];
  }>({});
  // WooCommerce API Category
  const {
    data: categories,
    isLoading: categoryWpIsLoading,
    isError: categoryIsError,
  } = useCategories("");

  const Categories: CategoryType[] = categories;
  const TotalCatgory = Categories?.length - 1;

  useEffect(() => {
    const fetchCategoryProducts = async () => {
      try {
        setIsLoading(true);

        const filteredCategories = categories
          ?.filter((category: CategoryType) => category?.count > 0)
          ?.slice(0, 5);

        if (filteredCategories) {
          const productsPromises = filteredCategories.map(
            async (category: CategoryType) => {
              const response = await WooCommerce.get(
                `products?category=${category?.id}`,
              );

              // Check if there is at least one product in the category
              const firstProductImage =
                response?.data.length > 0
                  ? response?.data[0]?.images[0]?.src
                  : null;

              return {
                categoryId: category?.id,
                firstProductImage: firstProductImage, // Store the first product's image
              };
            },
          );

          const productsResults = await Promise.all(productsPromises);

          // Update the state with the first product images mapped by category
          const productsMap = productsResults.reduce(
            (acc: any, result: any) => ({
              ...acc,
              [result.categoryId]: result.firstProductImage,
            }),
            {},
          );

          setCategoryProductsMap(productsMap);
        }
      } catch (error) {
        console.error("Error fetching category products:", error);
      } finally {
        setIsLoading(false);
      }
    };

    if (categories?.length) {
      fetchCategoryProducts();
    }
  }, [categories]);

  const handleNext = () => {
    if (sliderRef.current) {
      const { scrollLeft, scrollWidth, clientWidth } = sliderRef.current;
      const maxScroll = scrollWidth - clientWidth;
      setScrollLeftTotal(scrollLeft);
      setMaxScrollTotal(maxScroll);

      sliderRef.current.scrollLeft += 600; // Adjust the scroll distance as needed
      setCurrentIndex((prevIndex) =>
        prevIndex < TotalCatgory - 1 ? prevIndex + 1 : prevIndex,
      );
    }
  };

  const handlePrev = () => {
    if (sliderRef.current) {
      const { scrollLeft, scrollWidth, clientWidth } = sliderRef.current;
      const maxScroll = scrollWidth - clientWidth;
      setScrollLeftTotal(scrollLeft);
      setMaxScrollTotal(maxScroll);
      // console.log(scrollLeft);
      if (scrollLeft > 0) {
        sliderRef.current.scrollLeft -= 600; // Adjust the scroll distance as needed
        setCurrentIndex((prevIndex) =>
          prevIndex > 0 ? prevIndex - 1 : prevIndex,
        );
      }
    }
  };

  return (
    <>
      {/* Hero Concept inspired by the image */}
      <div className="relative w-full h-screen overflow-hidden flex items-center justify-center">
        {/* Background Image */}
        <Image
          alt="bg-image"
          fill
          src="/images/bgImage.png"
          className="object-cover object-center"
          priority
        />

        {/* Dark overlay */}
        <div className="absolute inset-0 bg-black/45" />

        {/* Content */}
        <div className="absolute inset-0 flex flex-col items-center justify-center text-center px-4">
          <h1 className="text-white text-5xl md:text-6xl lg:text-7xl font-serif font-normal leading-tight mb-8 drop-shadow-lg">
            Best Computer <br /> Accessories.
          </h1>

          <button className="flex items-center gap-2 bg-white text-black text-sm font-medium px-6 py-3 rounded-full hover:bg-gray-100 transition-colors duration-200 shadow-md">
            Shop Now
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="14"
              height="14"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
            >
              <line x1="7" y1="17" x2="17" y2="7" />
              <polyline points="7 7 17 7 17 17" />
            </svg>
          </button>
        </div>
      </div>

      <section className="w-full bg-[#f1f3f5] py-20">
        <div className="max-w-[1350px] mx-auto px-2 md:px-1 grid grid-cols-1 md:grid-cols-3 gap-10">
          {/* Secure Payment */}
          <div className="flex flex-col gap-2 max-w-[393px]">
            <div className="flex items-center gap-2">
              <Image
                width={20}
                height={20}
                src="/images/cardSecurityImage.png"
                alt="secure-payment-icon"
              />
              <h3 className="text-sm font-semibold text-gray-900">
                Secure Payment
              </h3>
            </div>
            <p className="text-gray-500 text-sm leading-snug">
              Provide you with peace of mind while making purchases on here.
            </p>
          </div>

          {/* Fast Delivery */}
          <div className="flex flex-col gap-2 max-w-[393px]">
            <div className="flex items-center gap-2">
              <Image
                width={20}
                height={20}
                src="/images/deliveryImage.png"
                alt="fast-delivery-icon"
              />
              <h3 className="text-sm font-semibold text-gray-900">
                Fast delivery
              </h3>
            </div>
            <p className="text-gray-500 text-sm leading-snug">
              Allowing you to enjoy your new accessory without unnecessary
              delays.
            </p>
          </div>

          {/* Return Guarantee */}
          <div className="flex flex-col gap-2 max-w-[393px]">
            <div className="flex items-center gap-2">
              <Image
                width={20}
                height={20}
                src="/images/guaranteeImage.png"
                alt="return-guarantee-icon"
              />
              <h3 className="text-sm font-semibold text-gray-900">
                Return Guarantee
              </h3>
            </div>
            <p className="text-gray-500 text-sm leading-snug">
              Hassle-free return guarantee. we want you to be thrilled with your
              purchases from us.
            </p>
          </div>
        </div>
      </section>
      {/* Category Section Styling Idea */}

      <div className=" bg-black pl-2 md:pl-0 text-white font-bold py-10 mb-4 md:mb-0 text-[30px] lg:text-[48px]">
        <div className="max-w-[1350px] mx-auto ">
          <p className="text-white text-[15px] font-thin py-6 leading-none ">
            OUR SHOP
          </p>
          <p className="text-white text-[22px] md:text-[30px] font-[500]">
            Here are the best seller
          </p>
          <p className="text-white text-[22px] md:text-[30px] font-[500] mt-[-5px]">
            categories for you
          </p>
        </div>
      </div>

      <div className="bg-black  ">
        <div className="bg-white grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 mx-auto max-w-[1350px] px-2 lg:px-0 gap-10">
          {Categories?.slice(0, 5).map((cat) => {
            const productImage = categoryProductsMap[cat?.id];
            return (
              <Link
                key={cat.id}
                href={`/category/${convertToSlug(cat.name)}-${cat.id}`}
                className="group relative h-40 sm:h-48 bg-[#111] overflow-hidden border border-white/5 hover:border-blue-500/50 transition-all"
              >
                <Picture
                  src={cat.image?.src ?? productImage}
                  alt={cat.image?.name}
                  className="w-full h-full object-contain opacity-60 group-hover:scale-110 transition-transform duration-700"
                />

                <div className="absolute bottom-4 left-4">
                  <h3 className="text-sm sm:text-lg font-bold text-white uppercase">
                    {cat.name}
                  </h3>
                </div>
              </Link>
            );
          })}
        </div>
      </div>

      <div className="bg-black mt-10 md:mt-0 mb-0">
        <Link href="/category" className="flex max-w-[1350px] mx-auto py-10">
          <button className="bg-[#d4f53c] text-black text-sm font-semibold px-5 py-2.5 flex items-center gap-2 hover:brightness-95 transition-all">
            See all
            <span className="text-base">→</span>
          </button>
        </Link>
      </div>

      <div className="bg-black pt-[200px] pb-[100px] hidden md:block ">
        <div className="flex flex-row mx-auto max-w-[1350px] gap-14">
          <div className="w-[58%] h-[350px] overflow-hidden">
            <Image
              src="/images/image1.png"
              alt="gaming mouse setup"
              width={800}
              height={350}
              className="hidden md:flex w-full h-full object-cover object-center"
            />
          </div>
          <div className=" w-full md:w-[42%] h-[350px] overflow-hidden">
            <Image
              src="/images/image2.png"
              alt="iMac desk setup"
              width={560}
              height={350}
              className="w-full h-full object-cover object-center"
            />
          </div>
        </div>
      </div>

      {/* </Carousel> */}
    </>
  );
};

export default AllCategorySection;
