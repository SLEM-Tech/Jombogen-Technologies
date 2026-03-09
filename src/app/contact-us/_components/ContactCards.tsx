"use client";
import { Skeleton } from "@heroui/react";
import ContactCard from "@src/components/Cards/ContactCard";
import { useGeneralSettings } from "@src/components/lib/woocommerce";
import React from "react";
import { FiPhoneCall } from "react-icons/fi";
import { IoLocationOutline } from "react-icons/io5";
import { RxEnvelopeClosed } from "react-icons/rx";

const ContactCards = () => {
	const { data: generalSettings, isLoading, isError } = useGeneralSettings();

	const GeneralSettings: WooCommerceSetting[] = generalSettings;

	// console.log("GeneralSettings", GeneralSettings);

	const contactCardData = [
    {
      id: 1,
      title: "Email Us",
      type: "email",
      icon: <RxEnvelopeClosed className="text-primary text-2xl xl:text-4xl" />,
      additionalText: "5. cherise.brown.2121@mailshield.org",
      // additionalText: GeneralSettings ? GeneralSettings[0]?.value : "N/A",
    },
    {
      id: 2,
      title: "Call Us",
      icon: <FiPhoneCall className="text-primary text-2xl xl:text-4xl" />,
      type: "tel",
      additionalText: "09061778721",
      // additionalText: GeneralSettings ? GeneralSettings[1]?.value : "N/A",
    },
    {
      id: 3,
      title: "Location",
      type: "text",
      icon: <IoLocationOutline className="text-primary text-2xl xl:text-4xl" />,
      description: "60, Oduduwa way onigbongbo ikeja Lagos",
      //   description: GeneralSettings ? GeneralSettings[2]?.value : "N/A",
    },
    // Add more contact card data here if needed
  ];
	return (
		<>
			{generalSettings &&
				contactCardData?.map((card) => (
					<ContactCard
						key={card.id}
						isLoading={isLoading}
						type={card.type}
						title={card.title}
						icon={card.icon}
						additionalText={card.additionalText}
						// additionalText2={card.additionalText2}
						description={card.description}
					/>
				))}

			{isLoading && (
				<>
					<Skeleton className='flex flex-col w-[15rem] bg-slate-200 slg:w-[18rem] xl:w-[23rem] shadow-md rounded-md py-5 sm:py-20 xl:py-32 items-center justify-center text-center px-4 xl:px-1 animate-pulse' />
					<Skeleton className='flex flex-col w-[15rem] bg-slate-200 slg:w-[18rem] xl:w-[23rem] shadow-md rounded-md py-5 sm:py-20 xl:py-32 items-center justify-center text-center px-4 xl:px-1 animate-pulse' />
					{/* <Skeleton className='flex flex-col w-[15rem] bg-slate-200 slg:w-[18rem] xl:w-[23rem] shadow-md rounded-md py-5 sm:py-20 xl:py-32 items-center justify-center text-center px-4 xl:px-1 animate-pulse' /> */}
				</>
			)}
		</>
	);
};

export default ContactCards;
